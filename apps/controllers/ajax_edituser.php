<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_SESSION['customer']['contact_id']);
//exit;

$contact = $_SESSION['customer']['contact_id'];
//$lib->debug($contact);
$email = trim($_REQUEST['email']);
$lastnaem = trim($_REQUEST['lastname']);
$firstname = trim($_REQUEST['firstname']);
$phone = trim($_REQUEST['phone']);

if (isset($_REQUEST)) {
    $edit = $sqlData->updateUserCred($contact, $lastnaem, $firstname, $email, $phone);
//    $lib->debug($edit);
//    exit;
    if ($edit) {
        echo 'true||Modification effectuée';
        exit;
    } else {
        echo 'false||ERREUR';
        exit;
    }
}