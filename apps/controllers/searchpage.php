<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$key = $pages[1];

$itemskey = $sqlData->searchItem($key);

$nbrItems = $itemskey['rows'];


$currentPage = $param2[1];

if ($currentPage == null)
    $currentPage = 1;
//$lib->debug($currentPage);
$pagination = new Pagination($iniObj, $nbrItems);
$start = $pagination->getStartLimit($currentPage);
// $lib->debug($iniObj->nbResultHomePage);

$items = $sqlData->searchItem($key, $start, $iniObj->nbResultHomePage);

//$lib->debug($items);
//exit;


if (file_exists(_VIEW_PATH . $lib->lang . "/searchpage.phtml"))
    $view = $lib->lang . "/searchpage.phtml";
else
    $view = $iniObj->defaultLang . "/searchpage.phtml";