<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($deletCartItem);
//exit;

if (isset($_POST['id'])) {
    
    $total = 0;
    foreach ($_SESSION['shopping_cart'] as $keys => $value) {
        if ($value['item_id'] == $_POST['id']) {
            unset($_SESSION['shopping_cart'][$keys]);
        }
        $total = $total + $value['item_quantity'];
    }
}
echo 'true||Element supprimé !||'.$total;
exit;
