<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



if ($_REQUEST) {
    $description = urldecode($_REQUEST['description']);
    $mission_id = $_REQUEST['mission_id'];

    $inserDesc = $sqlData->insertMissionDesc($mission_id, $description);
//    $lib->debug($inserDesc);
//    exit;
    if($inserDesc == 1){
        echo 'true||Done !';
        exit;
    }else{
        echo 'false||Error try again !';
        exit;
    }
}