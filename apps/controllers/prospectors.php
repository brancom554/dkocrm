<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$actvmenu = "user";

$title = $lang->trl('Prospectors');

$users = $sqlData->getUser()['data'];

//$lib->debug($users);
//exit;

if (file_exists(_VIEW_PATH . "/customer/users.phtml"))
    $view = "/customer/users.phtml";
else
    $view = "/customer/users.phtml";