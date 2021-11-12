<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$title = "Compose Mail";
$actvmenu = "mailer";
$user_id = $_SESSION['customer']['user_id'];

$sentmail = $sqlData->getSentMail($user_id);

$companies = $sqlData->getCompAdre()['data'];
$types = $sqlData->getemailType()['data'];
$allsentmail = $sqlData->getSentMail();
//$lib->debug($allsentmail);
//exit;

if (file_exists(_VIEW_PATH . "/customer/new_mail.phtml"))
    $view = "/customer/new_mail.phtml";
else
    $view = "/customer/new_mail.phtml";
