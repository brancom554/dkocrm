<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$order_code = $_POST['track_order'];
$contact_email = $_POST['track_email'];

$ceckuser = $sqlData->checkContactByEmail($contact_email)['data'][0];
$order = $sqlData->getOrderByCode($order_code)['data'][0];
$orders = $sqlData->getOrderByCode($order_code);
$oderdetails = $sqlData->getOrderDetail($order->order_id);
$shippin_adress = $sqlData->getOrderAdress($order->address_id)['data'][0];

//$lib->debug($order);
//exit;


if (file_exists(_VIEW_PATH . $lib->lang . "/order.phtml"))
    $view = $lib->lang . "/order.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";