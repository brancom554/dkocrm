<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$title = $lang->trl('Settings');

$user_id = $_SESSION['customer']['user_id'];
//$user_connect = $sqlData->getUser($user_id)['data'][0];


if (file_exists(_VIEW_PATH . "/customer/setting.phtml"))
    $view = "/customer/setting.phtml";
else
    $view = "/customer/setting.phtml";