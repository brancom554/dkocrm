<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$actvmenu = "company";

$companyCode = urldecode($pages[1]);

$company_data = $sqlData->getCompAdre($companyCode)['data'][0];

// $lib->debug($company_data);
// exit;


if(file_exists(_VIEW_PATH."/customer/company_edit.phtml"))  $view="/customer/company_edit.phtml";
else  $view="/customer/company_edit.phtml";