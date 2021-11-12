<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



if (empty(trim($_REQUEST['email']))) {
    echo 'false||Veillez entrer un email';
    exit;
} else if (empty(trim($_REQUEST['pass']))) {
    echo 'false||Veillez entrer un mot de passe';
    exit;
} elseif (!filter_var($_REQUEST['email'], FILTER_VALIDATE_EMAIL)) {
    echo 'false||Veillez entrer un email valide!';
    exit;
} else {
    $data = $sqlData->authenticateUser($_REQUEST['email']);

    //$lib->debug($data['data'][0]->password);
    //exit();

    if ($data['rows'] > 0) {

        $checkpass = password_verify($_REQUEST['pass'], $data['data'][0]->password);

        if ($checkpass) {
            $_SESSION['customer']['authValidated'] = TRUE;
            foreach ($data['data'][0] as $k => $v) {
                $_COOKIE['customer'][$k] = $_SESSION['customer'][$k] = $v;
            }
            //$lib->debug($_SESSION);
            //exit();
            echo "true||Connexion effectuée";
            exit;
        } else {
            echo "false||Veillez vérifier vos identifiants";
            exit;
        }
    } else {
        echo "false||Un probleme est survenu lors de la connexion, veillez vos identifiants et réessayer !";
        exit;
    }
}
