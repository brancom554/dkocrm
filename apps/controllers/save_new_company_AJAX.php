<?php




unset($error);
foreach ($_REQUEST as $k => $v) {
    $_REQUEST[$k] = urldecode(trim($v));
}
// $lib->debug($_FILES);
// $lib->debug($_REQUEST);
// exit;

if (isset($_REQUEST)) {
    $company_name = htmlspecialchars($_REQUEST['company_name'], ENT_QUOTES, "UTF-8");
    $company_zipcode = htmlspecialchars($_REQUEST['company_zipcode'], ENT_QUOTES, "UTF-8");
    $activity_area = htmlspecialchars($_REQUEST['activity_area'], ENT_QUOTES, "UTF-8");
    $company_city = htmlspecialchars($_REQUEST['company_city'], ENT_QUOTES, "UTF-8");
    $company_adress = htmlspecialchars($_REQUEST['company_adress'], ENT_QUOTES, "UTF-8");
    $company_country = htmlspecialchars($_REQUEST['company_country'], ENT_QUOTES, "UTF-8");
    $code_naf = htmlspecialchars($_REQUEST['code_naf'], ENT_QUOTES, "UTF-8");
    $company_type = htmlspecialchars($_REQUEST['company_type'], ENT_QUOTES, "UTF-8");
    $web_site = htmlspecialchars($_REQUEST['web_site'], ENT_QUOTES, "UTF-8");


    //  var_dump($profile_user);
    // die;s
    if (empty(trim($company_name))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($company_zipcode))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($activity_area))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($company_adress))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($company_city))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($code_naf))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($company_country))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($company_type))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } else {
        //
        // $contact_num = 'D' . substr($zipcode, 0, 2) . substr(strtoupper(normalize($ville)), 0, 3) . substr(strtoupper(normalize($prenom_user)), 0, 2) . rand(1000000, 9000000);
        // $pass = password_hash($password, PASSWORD_ARGON2I);
        $verify_company = $sqlData->getCompanyByName($company_name);
        // var_dump($lib->debug($verify_company));
        // exit;

        if (count($verify_company['data']) != 0) {
            echo 'false||' . $lang->trl('This company already exists in our database');
            exit;
        } else {
            $newcompany = $sqlData->insertNewCompany($company_name, $activity_area, $company_type, $code_naf);

            if ($newcompany == true) {
                $lastupdate = date('Y/m/d H:i:s');
                $new_address = $sqlData->newCompAddress($company_adress, $newcompany, $company_city, $company_country, $company_zipcode, $web_site, $lastupdate, 1);
                // $lib->debug($new_address);
                // exit;
                if ($new_address == true) {
                    $label = "CREATE COMPANY";
                    $dateAction = date('Y/m/d H:m:s');
                    $user = $_SESSION['customer']['user_id'];
                    $active = 1;
                    $insertAction = $sqlData->newAction($label, $dateAction, $user, $active);
                    echo 'true||' . $lang->trl('Company registered successfully');
                    exit;
                }
            }
        }
    }
}
exit;
