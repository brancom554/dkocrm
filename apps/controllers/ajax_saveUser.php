<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_REQUEST);
//exit;


if (isset($_REQUEST)) {

    $lastname = $_REQUEST['lastname'];
    $firstname = $_REQUEST['firstname'];
    $email = $_REQUEST['email'];
    $pass1 = $_REQUEST['password1'];
    $pass2 = $_REQUEST['password2'];
    $phone = $_REQUEST['phone'];
    $country = $_REQUEST['country'];
    $city = $_REQUEST['city'];
    $gender = '';
    $creation_date = date('Y/m/d H:m:s');
    $status = 1;
    $role = 2;
    $password = password_hash($pass1, PASSWORD_DEFAULT);

    //$lib->debug($email);
    //exit;

    if (empty(trim($lastname))) {
        echo 'false||Veillez entrer votre nom';
        exit;
    } elseif (empty(trim($firstname))) {
        echo 'false||Veillez enter votre prénom';
        exit;
    } elseif (empty(trim($phone))) {
        echo 'false||Veillez entrer votre numero de téléphone';
        exit;
    } elseif (empty(trim($email))) {
        echo 'false||Veillez entrer votre email';
        exit;
    } elseif (empty(trim($pass1))) {
        echo 'false||Veillez entrer un mot de passe!';
        exit;
    } elseif (empty(trim($country))) {
        echo 'false||Veillez entrer votre pays de résidence!';
        exit;
    } elseif (empty(trim($city))) {
        echo 'false||Veillez entrer votre ville!';
        exit;
    } elseif (empty(trim($pass2))) {
        echo 'false||Veillez comfirmer votre mon de passe';
        exit;
    } elseif ($pass1 != $pass2) {
        echo 'false||Les mots de passe ne correspondent pas!';
        exit;
    } elseif (strlen($pass1) < 8) {
        echo 'false||Mot de passe incorrecte, veillez entrer au moins 8 caractères!';
        exit;
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo 'false||Veillez entrer un email valide!';
        exit;
    } elseif (!preg_match("/^[+][0-9_]+$/", $phone)) {
        echo 'false||Veillez entrer un numéro de téléphone valide!';
        exit;
    } elseif (!preg_match("/^[a-zA-Z-ÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïðòóôõöùúûüýÿ' ]*$/", $lastname)) {
        echo 'false||Nom incorrecte, veillez entrer que des caractères!';
        exit;
    } elseif (!preg_match("/^[a-zA-Z-ÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïðòóôõöùúûüýÿ' ]*$/", $firstname)) {
        echo 'false||Nom incorrecte, veillez entrer que des caractères!';
        exit;
    } else {
        $checkemail = $sqlData->getUserByEmail($email);

        if ($checkemail['rows'] != 0) {
            echo 'false||Ce compte existe déjà, veillez reinitialiser votre mot de passe';
            exit;
        } else {
            $insertuser = $sqlData->insertNewUser($lastname, $firstname, $email, $gender, $password, $phone, $creation_date, $status, $role, $country, $city);
            //$lib->debug($insertuser);
            //exit;
            if ($insertuser == 1) {

                $template = $sqlData->getTemplate(14);
//        $lib->debug($template);
//        exit;
                $message = '';
                $subject = '';
                $keywordsContent = array(
                    "{SERVICE}" => $iniObj->serviceName,
                    "{COSTUMER_NAME}" => ucfirst($lastname) . ' ' . ucfirst($firstname),
                    "{ADDRESS}" => $iniObj->companyAddress,
                    "{DATE}" => date('d/m/Y H:m:s'),
                    "{ZIPCODE}" => $iniObj->companyZipCode,
                    "{COMPCITY}" => $iniObj->companyCity,
                    "{COMPCOUNTRY}" => $iniObj->companyCountry,
                    "{COMPEMAIL}" => $iniObj->contactReply,
                    "{COMPPHONE}" => $iniObj->companyPhoneNum
                );
                $keywordsSubject = array(
                    //"{id}" => $val->shipping_id,
                    "{SERVICE}" => $iniObj->serviceName
                );
                //$lib->debug($template);
                //exit;
                $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->body);
                $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

//        $lib->debug($subject);
//        exit;

                $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $email, $subject, $message
                        , $cc = $iniObj->emailContact
                );

                echo 'true||Enrégistrement effectué avec success, veillez vous connecter !';
                exit;
            } else {
                echo 'false||Enregistrement non effectué, veillez reéssayer svp';
                exit;
            }
        }
    }
}
