<?php

$actvmenu = "contact";
$contacts = $sqlData->getContacts()['data'];

$companies = $sqlData->getAllCompanies()['data'];
//var_dump($sqlData->getAllCompanies()['data']);

if (file_exists(_VIEW_PATH . "/customer/contact_list.phtml"))  $view = "/customer/contact_list.phtml";
else  $view = "/customer/contact_list.phtml";
