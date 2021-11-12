<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$id = $_POST['id'];

//$lib->debug($id);
//exit;

$delet = $sqlData->delete_item($id);
//$lib->debug($delet);
//exit;
if($delet){
    echo "true||Articles supprimé!";
    exit;
    
}else{
    echo 'false||Veillez reéssayer SVP';
    exit;
}
    