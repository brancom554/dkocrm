<?php

unset($error);
foreach ($_REQUEST as $k => $v) {
    $_REQUEST[$k] = urldecode(trim($v));
}
// $lib->debug($_FILES);
// $filename = $_FILES['contacts_csv']['tmp_name'];
// if ($_FILES['contacts_csv']['size'] > 0) {
// }
// $file = fopen($filename, "r");
// $array_contacts = [];
// $column = fgetcsv($file, 10000, ";");
// var_dump($column);


if (isset($_REQUEST)) {

    $first_name = htmlspecialchars($_REQUEST['first_name'], ENT_QUOTES, "UTF-8");
    $last_name = htmlspecialchars($_REQUEST['last_name'], ENT_QUOTES, "UTF-8");
    $phone_number = htmlspecialchars($_REQUEST['phone_number'], ENT_QUOTES, "UTF-8");
    $fonction = htmlspecialchars($_REQUEST['fonction'], ENT_QUOTES, "UTF-8");
    $company = htmlspecialchars($_REQUEST['company'], ENT_QUOTES, "UTF-8");
    $email = htmlspecialchars($_REQUEST['email'], ENT_QUOTES, "UTF-8");
    // $password = htmlspecialchars($_REQUEST['password'], ENT_QUOTES, "UTF-8");
    $is_active = $_REQUEST['is_active'];
    $is_manager = htmlspecialchars($_REQUEST['is_manager'], ENT_QUOTES, "UTF-8");
    $interest_level = htmlspecialchars($_REQUEST['interest_level'], ENT_QUOTES, "UTF-8");
    // $created_by = htmlspecialchars($_SESSION['customer']['contact_id'], ENT_QUOTES, "UTF-8");
    //  var_dump($profile_user);
    // die;s
    if (empty(trim($first_name))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($last_name))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($phone_number))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($fonction))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($company))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($email))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (empty(trim($interest_level))) {
        echo "false||" . $lang->trl('Please fill all the required fields');
        exit;
        // } elseif (empty(trim($is_active))) {
        //     echo "false||" . $lang->trl('Please choose conatct status');
        //     exit;
        //    } elseif (empty(trim($is_manager))) {
        //        echo "false||Veuillez renseigner le code NAF";
        //        exit;
        // } elseif (empty(trim($created_by))) {
        // 	echo "false||Veuillez renseigner le code NAF";
        // 	exit;
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo 'false||' . $lang->trl('Please enter a valid email!');
        exit;
    } else {
        $verify_contact = $sqlData->getContactByEmail($email);
        // var_dump($lib->debug($verify_contact));
        // exit;
        if ($is_manager == 1) {
            $is_manager = 1;
        } else {
            $is_manager = 0;
        }
        if ($is_active == 1) {
            $is_active = 1;
        } else {
            $is_active = 0;
        }

        // $lib->debug($is_active);
        // exit;

        if (count($verify_contact['data']) != 0) {
            echo 'false||' . $lang->trl('This contact already exists');
            exit;
        } else {
            $created_by = $_SESSION['customer']['user_id'];
            $date_creation = date('Y/m/d H:m:s');
            $register_company = $sqlData->insertNewContact($first_name, $last_name, $email, $phone_number, $fonction, $is_active, $interest_level, $company, $is_manager, $created_by, $date_creation);
            //   $lib->debug($register_company);
            //   exit;

            if ($register_company == 1) {

                $label = "CREATE CONTACT";
                $dateAction = date('Y/m/d H:m:s');
                $user = $_SESSION['customer']['user_id'];
                $active = 1;
                $insertAction = $sqlData->newAction($label, $dateAction, $user, $active);
                if ($insertAction == true) {
                    //                     $template = $sqlData->getMailTemplate(8);
                    // //                $lib->debug($template);
                    // //                exit;

                    //                     $message = '';
                    //                     $subject = '';
                    //                     $keywordsContent = array(
                    //                         "{SERVICE}" => $iniObj->serviceName,
                    //                         "{LASTNAME}" => $last_name
                    //                     );
                    //                     $keywordsSubject = array(
                    //                         //"{id}" => $val->shipping_id,
                    //                         "{SERVICE}" => $iniObj->serviceName,
                    //                         "{SUBJECT}" => "Ajout de nouveau contact",
                    //                     );
                    //                     $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->content);
                    //                     $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

                    //                     $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $email, $subject, $message
                    //                             , $cc = $iniObj->emailContact
                    //                     );
                    echo 'true||' . $lang->trl('Contact saved successfully');
                    exit;
                }
                //                  $lib->debug($insertAction);
                //                exit;
            } else {
                echo 'false||' . $lang->trl('Connection problem, please try again');
                exit;
            }
        }
    }
}
exit;
