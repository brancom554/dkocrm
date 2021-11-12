<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$title = "Mailer";
$actvmenu = "mailer";
$user_id = $_SESSION['customer']['user_id'];

$sentmail = $sqlData->getSentMail($user_id);
$allsentmail = $sqlData->getSentMail();
//$lib->debug($sentmail);
//exit;

if (file_exists(_VIEW_PATH . "/customer/mailer.phtml"))
    $view = "/customer/mailer.phtml";
else
    $view = "/customer/mailer.phtml";