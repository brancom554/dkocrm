<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$nbrItems = $sqlData->getCountItems();
$nbrItems = $nbrItems['data'][0];
$pages_requested = 'home2';
$currentPage = $param2[1];

if ($currentPage == null)
    $currentPage = 1;
//$lib->debug($currentPage);
$pagination = new Pagination($iniObj, $nbrItems->total);
$start = $pagination->getStartLimit($currentPage);
// $lib->debug($iniObj->nbResultHomePage);

$categories = $sqlData->getCategories();

$items = $sqlData->getItems($start, $iniObj->nbResultHomePage);

//$lib->debug($start);
//exit;

if (file_exists(_VIEW_PATH . $lib->lang . "/home_page2.phtml"))
    $view = $lib->lang . "/home_page2.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";