<?php


$actvmenu = "company";
$categories = $sqlData->getAllCategories()['data'];

if(file_exists(_VIEW_PATH."/customer/company_new.phtml"))  $view="/customer/company_new.phtml";
else  $view="/customer/company_new.phtml";