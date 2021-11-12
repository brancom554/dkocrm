<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$num = count($_SESSION['shopping_cart']);
//
//$lib->debug($num);
//exit;
//$user = $_SESSION['customer']['contact_id'];
//$cart = $sqlData->getcontactCart($user);
//
//$cartdetails = $sqlData->getcartdetail($cart['data'][0]->cart_id);
////$iteimg = $sqlData->getItemFeaImg($cartdetails['data'][0]->item_id);
//$total = $sqlData->tottalSum()['data'][0]->total;


//$number = count($_SESSION['shopping_cart']);
//
//$lib->debug($_SESSION['shopping_cart']);
//exit;

if (file_exists(_VIEW_PATH . $lib->lang . "/cart_page.phtml"))
    $view = $lib->lang . "/cart_page.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";
