<?php

$actvmenu = "dashboard";
$contact = $sqlData->getcontact();
$allcontact = $contact['rows'];

if ($_SESSION['customer']['role_id'] == 1) {
    $mission = $sqlData->getMissions();
}else if($_SESSION['customer']['role_id'] == 2){
    $mission = $sqlData->getMissions($_SESSION['customer']['user_id']);
}

$allmission = $mission['rows'];

$companies = $sqlData->getCompanies($a);
// $lib->debug($companies);
// exit;
$allcompanies = $companies['rows'];

$contacts = $sqlData->getLastContact()['data'];



if (file_exists(_VIEW_PATH . $lib->lang . "/home_page.phtml"))
    $view = $lib->lang . "/home_page.phtml";
else
    $view = $iniObj->defaultLang . "/page_home.phtml";


