<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




$itemid = $_REQUEST['itemID'];
$imgexist = $sqlData->getOthItemImg($itemid);

//$lib->debug($imgexist);
//exit;

$itemdetails = $sqlData->getItemdetail($itemid);
//$all = count($_FILES);

$addcode = date('Yms');

$type1 = explode('.', $_FILES['img_item1']['name']);
$type1 = $type1[count($type1) - 1];
$file_name1 = strtoupper($itemdetails['data'][0]->name) . "1" . "." . strtolower($type1);

$type2 = explode('.', $_FILES['img_item2']['name']);
$type2 = $type2[count($type2) - 1];

$file_name2 = strtoupper($itemdetails['data'][0]->name) . "2" . "." . strtolower($type2);

$file_tmp1 = $_FILES['img_item1']['tmp_name'];

$file_tmp2 = $_FILES['img_item2']['tmp_name'];

//$lib->debug($file_name1);
//exit;

$target = _WEB_FILES . "filesLib/images/articles_img/";

if (in_array($type1, array('jpg', 'jpeg', 'png', 'gif', 'JPG', 'PNG', 'JPEG', 'GIF')) == false && in_array($type2, array('jpg', 'jpeg', 'png', 'gif', 'JPG', 'PNG', 'JPEG', 'GIF')) == false) {
    echo 'false||Le format des images est incorrecte veillez televerser une autre image';
    exit;
}

if (!file_exists(_WEB_FILES . "/filesLib/images/articles_img/")) {
    mkdir(_WEB_FILES . "/filesLib/images/articles_img/", 0777, true);
}
move_uploaded_file($file_tmp1, $target . $file_name1);

move_uploaded_file($file_tmp2, $target . $file_name2);

if ($imgexist['rows'] == 0) {
    //Pas d'autres images 

    $feath_img = 0;
    $status = 1;
    //$date_modif = date('Y/m/d/ H:m:s');

    $insert1 = $sqlData->newImgFearth($itemid, $file_name1, $feath_img, $status);

    $insert2 = $sqlData->newImgFearth($itemid, $file_name2, $feath_img, $status);
    //$lib->debug($insert1);
    //exit;
    if (($insert1 == 1) && ($insert2 == 1)) {
        echo 'true||Galerie modifiée';
        exit;
    }
} else {
    $image_id = $imgexist['data'][0]->image_id;
    $updateimg1 = $sqlData->updateOthImg($image_id, $file_name1);

    $updateimg2 = $sqlData->updateOthImg($image_id, $file_name2);
    if (($updateimg1 == 1) && ($updateimg2 == 1)) {
        echo 'true||image modifiée !';
        exit;
    }
}

