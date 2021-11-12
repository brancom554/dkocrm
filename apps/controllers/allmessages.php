<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$title = "Mailer";

$sentmail = $sqlData->getSentMail($_SESSION['customer']['user_id']);
$allsentmail = $sqlData->getSentMail();
//$lib->debug($allsentmail);
//exit;

if (file_exists(_VIEW_PATH . "/customer/allmessages.phtml"))
    $view = "/customer/allmessages.phtml";
else
    $view = "/customer/allmessages.phtml";