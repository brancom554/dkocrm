<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if (isset($_FILES)) {
    $contact_id = $_SESSION['customer']['user_id'];
    $type = explode('.', $_FILES['contact_img']['name']);
    $type = $type[count($type) - 1];

    $test = date('YmdHms');

    $file_name = $test . "." . strtolower($type);

    $file_tmp = $_FILES['contact_img']['tmp_name'];
    $target = _WEB_FILES . 'UIResources/img/profile/';



    if (in_array(strtolower($type), array('jpg', 'jpeg', 'png', 'gif')) == false) {
        echo 'false||Extention du fichier incorrecte, veiiller choirir un autre fichier';
        exit;
    }

    if (!file_exists(_WEB_FILES . "/UIResources/img/profile/")) {
        mkdir(_WEB_FILES . "/UIResources/img/profile/", 0777, true);
    }
    $ok = move_uploaded_file($file_tmp, $target . $file_name);

    $imgpath = $file_name;

    $updateimg = $sqlData->updateuserIMG($contact_id, $imgpath);
    if ($updateimg) {
        echo 'true||Image de profil modifiée';
        exit;
    } else {
        echo 'false||Un problème renctré lors de la mise à jour, veillez réessayer!';
        exit;
    }
} else {
    echo 'false||Veillez cjoisir un fichier';
    exit;
}