<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if($_SESSION['customer']['authValidated'] == 1){
    if (file_exists(_VIEW_PATH . $viewPath . "/userdetails.phtml"))
    $view = $viewPath . "/userdetails.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";
}else
    $view = $iniObj->defaultLang . "/home_page.phtml";


