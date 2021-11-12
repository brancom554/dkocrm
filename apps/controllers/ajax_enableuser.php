<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//
//$lib->debug($_REQUEST);
//exit;

if (isset($_REQUEST)) {
    $user_id = $_REQUEST['id'];
    $updateStat = $sqlData->enableUser($user_id);
    if($updateStat == 1){
        echo 'true||OK';
        exit;
    }else{
        echo 'false||Activation échouée, veillez reéssayer';
        exit;
    }
}