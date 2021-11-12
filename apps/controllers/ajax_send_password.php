<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$email = $_REQUEST['email'];

if (empty(trim($email))) {
    echo 'false||Veillez entrer votre email';
    exit;
} else {
    $data = $sqlData->authenticateUser($email);

    if ($data['data'][0]->email == $email) {
        $password = $lib->generatePassword();
        //$password = "azerty123";
        //$lib->debug($password);
        //exit;

        $pass_encrypted = password_hash($password, PASSWORD_DEFAULT);

        $updatepawd = $sqlData->updateContactpwd($data['data'][0]->email, $pass_encrypted);
        //$lib->debug($updatepawd);
        //exit;

        $template = $sqlData->getTemplate(2);

        $message = '';
        $subject = '';
        $keywordsContent = array(
            "{EMAIL}" => $data['data'][0]->email,
            "{PASSWORD}" => $password,
            "{SERVICE}" => $iniObj->serviceName,
            "{SITE_URL}" => $iniObj->siteUrl,
            "{COMPANY_NAME}" => $iniObj->companyName,
            "{COMPANY_ADDRESS}" => $iniObj->companyAddress,
            "{COMPANY_ZIP_CODE}" => $iniObj->companyZipCode,
            "{COMPANY_CITY}" => $iniObj->companyCity,
            "{COMPANY_COUNTRY}" => $iniObj->companyCountry,
            "{COMPANY_PHONE}" => $iniObj->companyPhoneNum,
            "{COMPANY_FAX}" => $iniObj->companyFaxNum
        );
        $keywordsSubject = array(
            //"{id}" => $val->shipping_id,
            "{SERVICE}" => $iniObj->serviceName
        );
        //$lib->debug($template);
        //exit;
        $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->body);
        $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

        //$lib->debug($subject);
        //exit;

        $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $data['data'][0]->email, $subject, $message
                , $cc = $iniObj->emailContact
        );

        if ($sendmail) {
            echo 'true||Un nouveau mot de passe a été envoyé sur votre email!';
            exit;
        } else {
            echo "false||Erreur rencontrée lors de l'envoi du mail, veillez réesayer !";
            exit;
        }

        //$lib->debug($sendmail);
        //exit;
    } else {
        echo "false||Cet email n'existe pas dans notre base de données";
        exit;
    }
}
