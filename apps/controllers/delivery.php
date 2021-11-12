<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
if($_SESSION['customer']['authValidated'] == 1){
    
    
    
    $deleveries = $sqlData->getDeliveries();
    $contact = $_SESSION['customer']['contact_id'];
    
    $contactdeliveries = $sqlData->getDeliveries($contact);
    //$lib->debug($deleveries);
    //exit;
    
    
    if (file_exists(_VIEW_PATH . $viewPath . "/delivery.phtml"))
    $view = $viewPath . "/delivery.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";
}else
     $view = $iniObj->defaultLang . "/home_page.phtml";

