<?php

//$lib->debug($_REQUEST);
//exit;
unset($error);
foreach ($_REQUEST as $k => $v) {
    $_REQUEST[$k] = urldecode(trim($v));
}
// $lib->debug($_REQUEST);

if (empty(trim($_REQUEST['email']))) {
    echo "false||" . $lang->trl('Please enter your email address');
    exit;
}
if (empty($_REQUEST['password'])) {
    echo "false||" . $lang->trl('Please enter your password');
    exit;
}
// $pass = password_verify(trim($_REQUEST['password']), PASSWORD_ARGON2I);

$data = $sqlData->authenticateUser(trim($_REQUEST['email']));

//  $lib->debug($data);

if ($iniObj->debugUser == true) {
    // $lib->debug($data);
}
if ($data['rows'] > 0) {
    if ($iniObj->debugUser == true) {
        $_SESSION['customer']['authValidated'] = true;
        foreach ($data['data'][0] as $k => $v) {
            $_COOKIE['customer'][$k] = $_SESSION['customer'][$k] = $v;
        }
        echo "true||" . strtolower($_SESSION['customer']['prefered_lang']);
    } else {

        // 		echo " password U =".$data['data'][0]->passwordU;
        // 		echo " password salt =".$data['data'][0]->salt;
        // 		echo "password decrypted : ".$lib->decryptPassword(trim($data['data'][0]->passwordU),trim($data['data'][0]->salt));
        // 		echo  " request password : ".$_REQUEST['password'];

        /* encrypted password */
        // 		if($lib->decryptPassword($data['data'][0]->passwordU,$data['data'][0]->salt) == $_REQUEST['password']){
        /* plain text password */
        // if ($data['data'][0]->passwordU == $pass) {
        // 		echo " password U =".$data['data'][0]->passwordU;
        // 		echo " password salt =".$data['data'][0]->salt;
        // 		echo "password decrypted : ".$lib->decryptPassword(trim($data['data'][0]->passwordU),trim($data['data'][0]->salt));
        // 		echo  " request password : ".$_REQUEST['password'];

        /* encrypted password */
        /* plain text password */
        // if ($data['data'][0]->passwordU == $_REQUEST['password']) {
        // $passw = password_hash($_REQUEST['password'], PASSWORD_ARGON2I);
        // $res = $lib->debug($passw);
        // die($res);
        if ($data['data'][0]->active == 1) {
            if (password_verify($_REQUEST['password'], $data['data'][0]->password)) {
                // $checkPassword = password_verify($passw, $data['data'][0]->password);
                // $lib->debug($data['data'][0]->password);
                // if ($checkPassword) {
                // echo 'oui';
                // die;
                $_SESSION['customer']['authValidated'] = true;
                $_SESSION['SUCCESS'][] = $lang->trl("Welcome to") . " " . $iniObj->serviceName;
                foreach ($data['data'][0] as $k => $v) {
                    $_COOKIE['customer'][$k] = $_SESSION['customer'][$k] = $v;
                }
                // var_dump($_SESSION);
                // die;
                // $sqlData->updateLoginDate($_SESSION['customer']['contact_num']);
                echo "true||" . strtolower($_SESSION['customer']['prefered_lang']);
                // exit;
                $label = "LOGIN TO DASHBOARD";
                $dateAction = date('Y/m/d H:m:s');
                $user = $data['data'][0]->user_id;
                $active = 1;
                $insertAction = $sqlData->newAction($label, $dateAction, $user, $active);
                // $lib->debug($_SESSION);
                // exit;
                //header('Location: /customer/dashboard');
                echo 'true||OK';
                exit;
            } else {
                $_SESSION['customer']['authValidated'] = false;
                echo "false||" . $lang->trl("Password invalid");
                exit;
            }
        } else {
            $_SESSION['customer']['authValidated'] = false;
            echo "false||" . $lang->trl("This account has been deactivated");
            exit;
        }
    }
} else {
    echo "false||" . $lang->trl("This email address does not exist in our database");
    exit;
}


exit;
