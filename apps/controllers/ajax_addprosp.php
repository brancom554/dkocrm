<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




if (isset($_REQUEST)) {
    if ($_REQUEST['active']) {
        $active = 1;
    } else {
        $active = 0;
    }

    $firstname = urldecode($_REQUEST['firstname']);
    $lastname = urldecode($_REQUEST['lastname']);
    $email = urldecode($_REQUEST['email']);
    $manager = $_REQUEST['manager'];
    $role = $_REQUEST['role'];
    if (empty($firstname)) {
        echo 'false||' . $lang->trl('Please fill all the required fields');
        exit;
    } else if (empty($lastname)) {
        echo 'false||' . $lang->trl('Please fill all the required fields');
        exit;
    } else if (empty($role)) {
        echo 'false||' . $lang->trl('Please fill all the required fields');
        exit;
    } else if (empty($email)) {
        echo 'false||' . $lang->trl('Please fill all the required fields');
        exit;
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo 'false||' . $lang->trl('Please enter a valid email!');
        exit;
    } else {
        $checkuser = $sqlData->checkUser($email);
        if ($checkuser['rows'] > 0) {
            echo 'false||' . $lang->trl('This prosector already exists');
            exit;
        } else {
            $manager_id = ($manager) ? $manager : '0';
            $password = $lib->generatePassword();
            $login = $email;
            $pass_encrypted = password_hash($password, PASSWORD_DEFAULT);
            $date_created = date('Y/m/d H:i:s');
            $newuser = $sqlData->add_User($firstname, $lastname, $manager_id, $login, $email, $pass_encrypted, $role, $date_created, $active);
//            $lib->debug($newuser);
//            exit;
            if ($newuser == 1) {
                $template = $sqlData->getMailTemplate(7);
//                $lib->debug($template);
//                exit;

                $message = '';
                $subject = '';
                $keywordsContent = array(
                    "{SERVICE}" => $iniObj->serviceName,
                    "{EMAIL}" => $email,
                    "{PASSWORD}" => $password
                );
                $keywordsSubject = array(
                    //"{id}" => $val->shipping_id,
                    "{SERVICE}" => $iniObj->serviceName,
                    "{SUBJECT}" => "Identifiant de connexion",
                );
                $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->content);
                $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

                $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $email, $subject, $message
                        , $cc = $iniObj->emailContact
                );

                //Save Action
                $label = "CREATE NEW USER";
                $dateAction = date('Y/m/d H:m:s');
                $user = $_SESSION['customer']['user_id'];
                $active_action = 1;
                $insertAction = $sqlData->newAction($label, $dateAction, $user, $active_action);

                echo 'true||' . $lang->trl('Prospector added');
                exit;
            } else {
                echo 'false||' . $lang->trl('Error, please try again');
                exit;
            }
        }
    }
}