<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//unset($error);
if ($_SESSION['customer']['authValidated']) {

    $user_id = $_SESSION['customer']['contact_id'];
    $date = date('Y/m/d H:m:s');
    $status = 1;

    $checkCart = $sqlData->checkCart($user_id);

    if ($checkCart['rows'] == 0) {
        $createCart = $sqlData->newCart($date, $user_id, $status);

        $cart = $createCart;
    } else {
        $cart = $checkCart['data'][0]->cart_id;
    }
    $itemid = $_POST['itemid'];
    $quantity = 1;
    $item = $sqlData->getItemdetail($itemid);
    $subtotal = $item['data'][0]->price_max * $quantity;

    $checkdetailscart = $sqlData->checkitemincart($itemid,$cart);
    
    //$lib->debug($checkdetailscart);
    //exit;
    if ($checkdetailscart['rows'] == 0) {
        $insertcartdetails = $sqlData->insertcartdetail($cart, $itemid, $quantity, $subtotal);
        if ($insertcartdetails == TRUE) {
            echo 'true||Article ajouté au panier';
            exit;
        }
    } else {
        $newquantity = ($checkdetailscart['data'][0]->quantity) + 1;
        
        //$checkdetailscart = $sqlData->checkitemincart($itemid,$cart);
        $newsubtotal = $item['data'][0]->price_max * $newquantity;
        //$lib->debug($newsubtotal);
        //exit;
        
        $updatecart = $sqlData->updatecartdetails( $newquantity, $newsubtotal,$checkdetailscart['data'][0]->cart_detail_id);
        // $lib->debug($updatecart);
        // exit;
        if ($updatecart) {
            echo 'true||Article ajouté au panier';
            exit;
        } else {
            echo 'false||error';
            exit;
        }
    }
} else {
    echo 'false||Veillez vous connecter avant un ajout dans le panier';
    exit;
}
