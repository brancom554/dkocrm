<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

session_start();


if (isset($_REQUEST)) {
    $item_id = $_POST['item_id'];
    $newquantity = $_POST['newquantity'];
    $total = 0;
    
    
    if (isset($_SESSION['shopping_cart'])) {
        foreach ($_SESSION['shopping_cart'] as $keys => $values) {
            if ($_SESSION['shopping_cart'][$keys]['item_id'] == $item_id) {
                $_SESSION['shopping_cart'][$keys]['item_quantity'] = $newquantity;
            }
            $total = $total + $_SESSION['shopping_cart'][$keys]['item_quantity'];
        }
//        $lib->debug($_SESSION['shopping_cart']);
//        exit;

        echo 'true||Panier modifié||' . $total;
        exit;
    } else {
        echo 'false||Veillez reessayer SVP';
        exit;
    }
}