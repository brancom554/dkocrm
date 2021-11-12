<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$output = array();
$item = $sqlData->getItemdetail($_POST['id'])['data'][0];
$img = $sqlData->getItemImg($_POST['id'])['data'][0];
$image = ($img->path) ? $iniObj->imgPath.$img->path : $iniObj->UIPath.'/img/products/products-img1.jpg';
echo 'true||'.$item->price_max .'||'. $item->name. '||'.$item->description.'||'.$item->item_id.'||'.$image;
//*.'||'.($img->path) ? $iniObj->imgPath.$img->path : $iniObj->UIPath.'/img/products/products-img1.jpg'
//echo 'true||'.$item->name;
//echo 'true||'.$item->description;

exit;

//($img->path) ? $iniObj->imgPath.$img->path : $iniObj->UIPath.'/img/products/products-img1.jpg';
