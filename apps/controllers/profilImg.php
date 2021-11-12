<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_FILES['contact_img']['name']);
//exit;

$contact_id = $_SESSION['customer']['contact_id'];



$type = explode('.', $_FILES['contact_img']['name']);
$type = $type[count($type) - 1];

$test = date('YmdHms');

$file_name = $test . "." . strtolower($type);

$file_tmp = $_FILES['contact_img']['tmp_name'];
$target = _WEB_FILES . "filesLib/images/users/";

if (in_array(strtolower($type), array('jpg', 'jpeg', 'png', 'gif')) == false) {
    
}

if (!file_exists(_WEB_FILES . "/filesLib/images/users/")) {
    mkdir(_WEB_FILES . "/filesLib/images/users/", 0777, true);
}
move_uploaded_file($file_tmp, $target . $file_name);

$imgpath = $file_name;

//$lib->debug($imgpath);
//exit;

$updateimg = $sqlData->updateImg($contact_id, $imgpath);
if ($updateimg) {
    echo 'true||Image de profil modifiée';
    exit;
} else {
    echo 'false||Un problème renctré lors de la mise à jour, veillez réessayer!';
    exit;
}