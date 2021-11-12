<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_REQUEST);
//exit;
if (isset($_REQUEST)) {
    $email = $_REQUEST['email'];
    if (empty($email)) {
        echo 'false||' . $lang->trl('Email Required');
        exit;
    } else {
        $check = $sqlData->authenticateUser($email);
        if ($check['rows'] > 0) {
            $password = $lib->generatePassword();
            $pass_encrypted = password_hash($password, PASSWORD_DEFAULT);
            $updatepass = $sqlData->updatepass($check['data'][0]->user_id, $pass_encrypted);
//           
            if ($updatepass == 1) {
                $template = $sqlData->getMailTemplate(10);
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
                    "{SUBJECT}" => "Réinitialisation de mot de passe",
                );
                $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->content);
                $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

                $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $email, $subject, $message
                        , $cc = $iniObj->emailContact);
                if ($sendmail) {
                    echo 'true||' . $lang->trl('New password has been sent to your email address');
                    exit;
                } else {
                    echo 'false||' . $lang->trl('Error! Please try again');
                    exit;
                }
            }
        } else {
            echo "false||" . $lang->trl("This email do not exist in our databases");
            exit;
        }
    }
}