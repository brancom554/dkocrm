<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//



session_start();


if (isset($_REQUEST['itemid'])) {
    $itemid = $_REQUEST['itemid'];
    $item = $sqlData->getItemdetail($itemid)['data'][0];
//    $lib->debug($item);
//    exit;

    $item_qty = 1;
    if (isset($_SESSION['shopping_cart'])) {

        $total_item = 0;



        $is_available = 0;
        foreach ($_SESSION['shopping_cart'] as $keys => $values) {
            if ($_SESSION['shopping_cart'][$keys]['item_id'] == $item->item_id) {
                $is_available++;
                $_SESSION['shopping_cart'][$keys]['item_quantity'] = $_SESSION['shopping_cart'][$keys]['item_quantity'] + $item_qty;
            }
        }
        if ($is_available == 0) {
            $item_array = array(
                'item_id' => $item->item_id,
                'item_name' => $item->name,
                'item_price' => $item->price_max,
                'item_quantity' => $item_qty
            );
            $_SESSION['shopping_cart'][] = $item_array;
        }

        foreach ($_SESSION['shopping_cart'] as $k => $v) {
            $total_item = $total_item + $v['item_quantity'];
        }
        
    } else {
        $total_item = 1;
        $item_array = array(
            'item_id' => $item->item_id,
            'item_name' => $item->name,
            'item_price' => $item->price_max,
            'item_quantity' => $item_qty
        );
        $_SESSION['shopping_cart'][] = $item_array;
    }

    $all = ($_SESSION['shopping_cart'][$keys]['item_quantity']);

    echo 'true||Article ajouté au panier||'.$total_item;
    exit;
}