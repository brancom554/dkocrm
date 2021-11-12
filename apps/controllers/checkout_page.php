<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$contact_id = $_SESSION['customer']['contact_id'];
$contact_lastname = $_SESSION['customer']['lastname'];
$contact_firstname = $_SESSION['customer']['fisrtname'];
$contact_email = $_SESSION['customer']['email'];


//lib->debug($_SESSION);
//exit;

$contactdetail = $sqlData->getContactinfo($contact_id);


$addressCon = $sqlData->getContAddre($contact_id);


$company = $sqlData->getCompany($addressCon['data'][0]->address_id);
//$lib->debug($company);
//exit;





//$lib->debug($contact_email);
//exit;

$contact_phone = $_SESSION['customer']['phone'];

$subtotal = $sqlData->tottalSum()['data'][0]->total;
//$shippin_cost = 20;
$total = $subtotal;

if (file_exists(_VIEW_PATH . $lib->lang . "/checkout_page.phtml"))
    $view = $lib->lang . "/checkout_page.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";
