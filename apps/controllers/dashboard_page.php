<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if ($_SESSION['customer']['authValidated'] == 1) {


    $orderInprogress = $sqlData->getprogressOrders();
    $payment = $sqlData->getPayProgress();

//        $lib->debug($payment['rows']);
//    exit;
    $allproducts = $sqlData->getAllItems();
    $customers = $sqlData->getcustomers();
    $customOrders = $sqlData->getOrdersCont($_SESSION['customer']['contact_id']);

    if (file_exists(_VIEW_PATH . $lib->lang . "/dashboard_page.phtml"))
        $view = $lib->lang . "/dashboard_page.phtml";
    else
        $view = $iniObj->defaultLang . "/home_page.phtml";
} else
    $view = $iniObj->defaultLang . "/home_page.phtml";


