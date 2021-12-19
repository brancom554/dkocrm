<?php
$actvmenu = "company";

$companyCode = urldecode($pages[1]);

$company_data = $sqlData->getCompanies($companyCode)['data'][0];



//$contact = $sqlData->getContactCompany($company_data->company_id);
// $lib->debug($contact);
// exit


if (file_exists(_VIEW_PATH . "/customer/company_view.phtml"))  $view = "/customer/company_view.phtml";
else  $view = "/customer/company_view.phtml";
