<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if($_SESSION['customer']['authValidated'] == 1){
    $categories = $sqlData->getCategories()['data'];
//$lib->debug($categories);
//exit;
    foreach ($categories as $key => $cat) {
        $items = "";
    }


    if (file_exists(_VIEW_PATH . $viewPath . "/categories.phtml"))
        $view = $viewPath . "/categories.phtml";
    else
        $view = $iniObj->defaultLang . "/home_page.phtml";
}else {
    $view = $iniObj->defaultLang . "/home_page.phtml";
}




//$view = $viewPath."categoories.phtml";