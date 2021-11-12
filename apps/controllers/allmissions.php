<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$missions = $sqlData->getMissions()['data'];
//$lib->debug($missions);
//exit;

if (file_exists(_VIEW_PATH . "/customer/allmissions.phtml"))
    $view = "/customer/allmissions.phtml";
else
    $view = "/customer/allmissions.phtml";