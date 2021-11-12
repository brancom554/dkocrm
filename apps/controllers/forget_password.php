<?php

if ($_SESSION['customer']['authValidated'] != 1) {
    if (file_exists(_VIEW_PATH . $lib->lang . "/reset_password_page.phtml"))
        $view = $lib->lang . "/reset_password_page.phtml";
    else
        $view = $iniObj->defaultLang . "/home_page.phtml";
}else {
    $view = $iniObj->defaultLang . "/home_page.phtml";
}









