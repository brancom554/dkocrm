<?php

/*$page_requested=$pages[0];
$productCode = urldecode($pages[1]);
$categoryDescription = urldecode($pages[2]);
$product=$sqlData->getProductDetail($productCode);
$product =$product['data'][0];

$_magasins=$sqlData->getMagasins();

$_categories=$sqlData->getCategories();

$_all_sub_categories = $sqlData->getSubCategoriesCategory();

$_sub_categories = array();
foreach ($_all_sub_categories['data'] as $element) {
    $_sub_categories[$element->libelle][] = $element;
}*/


$page_requested = $pages[0];
$itemID = urldecode($pages[1]);
$item = $sqlData->getItemdetail($itemID);
//var_dump($item);
//die;
$item = $item['data'][0];



$itemFeAImg = $sqlData->getItemFeaImg($item->item_id);
$itemOthImgs = $sqlData->getOthersItemImg($item->item_id);

$item_cat = $sqlData->getItem1cat($item->category_id, $item->item_id);
//$lib->debug($item_cat);
//exit;

if(file_exists(_VIEW_PATH.$lib->lang."/product_page.phtml"))  $view=$lib->lang."/product_page.phtml";
else  $view=$iniObj->defaultLang."/page_home.phtml";