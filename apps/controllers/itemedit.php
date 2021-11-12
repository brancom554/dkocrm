<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//updateItem($itemid, $stock, $itemname, $desc, $pricemax, $pricepromo = '', $deppromo = '', $finpromo = '', $categpry)


$itemid = $_POST['itemid'];
$itemname = $_POST['itemtitle'];
$stock = $_POST['itemstock'];
$description = $_POST['description'];
$pricemax = $_POST['itempricemax'];
$pricepromo = $_POST['itempricemin'];
$category = $_POST['category'];
$deppromo = $_POST['datedebprom'];
$finpromo = $_POST['datefinprom'];



if ((!empty($pricepromo))) {
    $updateItem = $sqlData->updateItem1($itemid, $stock, $itemname, $desc, $pricemax, $pricepromo, $deppromo, $finpromo, $category);
    if ($updateItem) {
        echo 'true||Article mis à jour ok!';
        exit;
    } else {
        echo 'false||Problème survenu lors de la mise à jour, veillez reéssayer !';
        exit;
    }
} else {
    $pricepromo = "lol";
    //$lib->debug($pricepromo);
    //exit;
    $updateItem = $sqlData->updateItem($itemid, $stock, $itemname, $description, $pricemax, $category);
    //$lib->debug($updateItem);
    //exit;
    if ($updateItem) {
        echo 'true||Article mis à jour !';
        exit;
    } else {
        echo 'false||Problème survenu lors de la mise à jour, veillez reéssayer !';
        exit;
    }
}



