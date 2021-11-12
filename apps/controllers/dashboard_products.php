<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if($_SESSION['customer']['authValidated'] == 1){
    $products = $sqlData->getItemsDash();
//$lib->debug($products);
//exit;

if (file_exists(_VIEW_PATH . $viewPath . "/products.phtml"))
    $view = $viewPath . "/products.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";
}else {
    $view = $iniObj->defaultLang . "/home_page.phtml";
}



//$view = $viewPath . "/products.phtml";
