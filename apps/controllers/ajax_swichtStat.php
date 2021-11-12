<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//changOrderStat
//$lib->debug($_REQUEST);
//exit;
$order_id = $_POST['order'];
$newSta = $_POST['id'];

$updateStat = $sqlData->changOrderStat($order_id, $newSta);
$delivery = $sqlData->getOrderDetail($order_id)['data'][0]->shipping_id ;
$setdelivery = $sqlData->setDelivery($delivery);

if($updateStat == 1){
    echo 'true||Statut modifié';
}else
    echo 'false||Un probleme est survenu lors du changement de statut, veillez réesayer';
exit;