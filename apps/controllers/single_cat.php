<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$cat_id = $pages[1];

$catItemNbr = $sqlData->getCountCatItem($cat_id);
$catItemNbr = $sqlData->getCountCatItem($cat_id)['data'][0]->total;
$page_requested = 'category_' . $pages[1];
$currentPage = $param2[1];

if ($currentPage == null)
    $currentPage = 1;


$pagination = new Pagination($iniObj, $catItemNbr);
$start = $pagination->getStartLimit($currentPage);
// $lib->debug($iniObj->nbResultHomePage);

$categories = $sqlData->getCategories($cat_id);
$cat_name = $categories['data'][0]->name;
//$lib->debug($categories);
//exit;
$catItems = $sqlData->getCatItem($cat_id,$start, $iniObj->nbResultHomePage);

if (file_exists(_VIEW_PATH . $lib->lang . "/single_cat.phtml"))
    $view = $lib->lang . "/single_cat.phtml";
else
    $view = $iniObj->defaultLang . "/page_home.phtml";