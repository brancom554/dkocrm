<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_REQUEST);
//exit;
$itemid = $_REQUEST['item_id'];
$imgexist = $sqlData->getItemImg($itemid);

$itemdetails = $sqlData->getItemdetail($itemid);



$type = explode('.', $_FILES['img_en_avant']['name'][0]);
$type = $type[count($type) - 1];
$file_name = strtoupper($itemdetails['data'][0]->name) . "." . strtolower($type);

//$lib->debug($file_name);
//exit;

$file_tmp = $_FILES['img_en_avant']['tmp_name'][0];
$target = _WEB_FILES . "filesLib/images/articles_img/";


if (in_array($type, array('jpg', 'jpeg', 'png', 'gif', 'JPG', 'PNG')) == false) {
    echo 'false||Le format est incorrecte veillez televerser une autre image';
    exit;
}
if (!file_exists(_WEB_FILES . "/filesLib/images/articles_img/")) {
    mkdir(_WEB_FILES . "/filesLib/images/articles_img/", 0777, true);
}
$upload = move_uploaded_file($file_tmp, $target . $file_name);




if ($imgexist['rows'] == 0) {
    //Pas d'image mise en avant 

    $feath_img = 1;
    $status = 1;
    //$date_modif = date('Y/m/d H:m:s');
    //$lib->debug($file_name);
    //exit;
    $insert = $sqlData->newImgFearth($itemid, $file_name, $feath_img, $status);
    $lib->debug($insert);
    exit;

    if ($insert) {
        echo 'true||image modifiée !';
        exit;
    }
} else {
    $image_id = $imgexist['data'][0]->image_id;
    $updateimg = $sqlData->updateMainImg($image_id, $file_name);
    if ($updateimg) {
        echo 'true||image modifiée !';
        exit;
    }
}
