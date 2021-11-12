<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if ($_SESSION['customer']['authValidated'] == 1) {


    $users = $sqlData->getUsers();
    
    //$adress = $sqlData->getcontactaddre($users['data'][0]->contact_id);
    
    //$lib->debug($adress);
    //exit;

    if (file_exists(_VIEW_PATH . $viewPath . "/users.phtml"))
        $view = $viewPath . "/users.phtml";
    else
        $view = $iniObj->defaultLang . "/home_page.phtml";
} else
    $view = $iniObj->defaultLang . "/home_page.phtml";


