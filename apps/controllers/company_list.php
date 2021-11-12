<?php

$actvmenu = "company";

$companies = $sqlData->getCompagniesonly()['data'];
// $lib->debug($companies);
// exit;
if (file_exists(_VIEW_PATH . "/customer/company_list.phtml"))  $view = "/customer/company_list.phtml";
else  $view = "/customer/company_list.phtml";
