<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$user = $_SESSION['customer']['user_id'];
if (isset($_REQUEST)) {
    $oldpass = trim($_REQUEST['oldpassword']);
    $newpass = trim($_REQUEST['newpassword']);
    $confirmnewpass = trim($_REQUEST['confirmnewpass']);
    if (empty($oldpass)) {
        echo 'false||'.$lang->trl('Please enter your old password');
        exit;
    } else if (empty($newpass)) {
        echo 'false||'.$lang->trl('Please enter a new password');
        exit;
    } else if (empty($confirmnewpass)) {
        echo 'false||'.$lang->trl('Please confirm your new password');
        exit;
    } else if (strlen($newpass) < 8) {
        echo 'false||'.$lang->trl('Incorrect password, please enter at least 8 characters!');
        exit;
    }else if ($newpass != $confirmnewpass) {
        echo 'false||'.$lang->trl('Passwords don\'t match');
        exit;
    } else {
        $user_detail = $sqlData->getUser($user)['data'][0];

        $checkPass = password_verify($oldpass, $user_detail->password);
        if ($checkPass) {
            $password = password_hash($newpass, PASSWORD_DEFAULT);
            //            $lib->debug($password);
            //            exit;
            $updateuserpass = $sqlData->updatepass($user, $password);
            if ($updateuserpass == 1) {
                echo 'true||Changement de mot de passe avec succes';
                exit;
            }
        } else {
            echo 'false||Votre ancien mot de passe est incorrecte';
            exit;
        }
    }
}
