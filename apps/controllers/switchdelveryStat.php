<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_REQUEST);
//exit;

$delivery = $_REQUEST['delivery'];
$newstat = $_REQUEST['status'];
$updateDelStat = $sqlData->updateDelStat($delivery, $newstat);

if($updateDelStat == 1){
    echo 'true||Status modifié';
    exit;
}else{
    echo 'false||Problem';
    exit;
}

