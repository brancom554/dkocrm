<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_REQUEST);
//exit;

if (file_exists(_VIEW_PATH . $lib->lang . "/successorder.phtml"))
    $view = $lib->lang . "/successorder.phtml";
else
    $view = $iniObj->defaultLang . "/home_page.phtml";

