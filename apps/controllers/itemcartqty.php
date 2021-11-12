<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//$lib->debug($_REQUEST);
//exit;

$item_cart_id = $_REQUEST['item_cart_id'];
$newprice = $_REQUEST['newprice'];
$newqty = $_REQUEST['qty'];


$updateCartItem = $sqlData->updateitemQty($item_cart_id, $newprice, $newqty);
if($updateCartItem){
    echo 'true||Element mofifié';
    exit;
} else {
    echo 'false||Problem';
    exit;
}