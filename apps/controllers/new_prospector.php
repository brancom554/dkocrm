<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$actvmenu = "user";

$title = $lang->trl('Add Prospector');

$managers = $sqlData->getManager()['data'];
$roles = $sqlData->getRole()['data'];
//$lib->debug($managers);
//exit;

if (file_exists(_VIEW_PATH . "/customer/new_user.phtml"))
    $view = "/customer/new_user.phtml";
else
    $view = "/customer/new_user.phtml";