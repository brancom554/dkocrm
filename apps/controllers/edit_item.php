<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if ($_SESSION['customer']['authValidated'] == 1) {

    $page_requested = $pages;

    $productCode = urldecode($pages[1]);
    $title = "";

    //getsolditemqty($item_id)
    
    $qty = $sqlData->getsolditemqty($productCode)['data'][0];
//    $lib->debug($qty);
//    exit;

    $proDetail = $sqlData->getItemdetail($productCode)['data'][0];
    
    $getcat = $sqlData->getcatByName($proDetail->category);

    $othersCat = $sqlData->getCatExcep($getcat['data'][0]->category_id);

    $itemFeAImg = $sqlData->getItemFeaImg($proDetail->item_id);
    $itemOthImgs = $sqlData->getOthersItemImg($proDetail->item_id);
    //$lib->debug($itemFeAImg);
    //exit;


    if (file_exists(_VIEW_PATH . $lib->lang . "/editItem.phtml"))
        $view = $lib->lang . "/editItem.phtml";
    else
        $view = $iniObj->defaultLang . "/home_page.phtml";
} else
    $view = $iniObj->defaultLang . "/home_page.phtml";

