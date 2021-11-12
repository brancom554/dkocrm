<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if (file_exists(_VIEW_PATH . $lib->lang . "/resetpassword.phtml"))
    $view = $lib->lang . "/resetpassword.phtml";
else
    $view = $iniObj->defaultLang . "/resetpassword.phtml";