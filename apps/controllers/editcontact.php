<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$actvmenu = "contact";

$contact_id = urldecode($pages[1]);

$contact = $sqlData->getContacts($contact_id)['data'][0];

$compagnies = $sqlData->getCompNo($contact->company_id)['data'][0];

// $lib->debug($contact);
// exit;


if (file_exists(_VIEW_PATH . "/customer/contact_edit.phtml"))  $view = "/customer/contact_edit.phtml";
else  $view = "/customer/contact_edit.phtml";
