<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



//$user = $_SESSION['customer']['contact_id'];
//
//$cart = $sqlData->getcontactCart($user);
//$cartdetails = $sqlData->getcartdetail($cart['data'][0]->cart_id);
//
//
////$lib->debug($cartdetails['data'][$i]->cart_detail_id);
////    exit;
//
//foreach ($cartdetails['data'] as $key => $detail) {
//    $delete = $sqlData->delete_cartdetails($detail->cart_detail_id);
//}
//$delet_cart = $sqlData->delete_cart($cart['data'][0]->cart_id);

unset($_SESSION['shopping_cart']);

echo 'true||Votre panier a été vidé';
exit;

