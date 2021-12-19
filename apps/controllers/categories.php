<?php

/*
 * retrieve the second parameter from the URL
 */
if (!($_SESSION['customer']['authValidated'])) {
    header("Location: " . $iniObj->siteUrl);
    //    echo "denied||" . $lang->trl("Authentification requise !");
    exit;
}

$viewPath = "customer/";

// $lib->debug($url_array);
$sub_page = $url_array[2];

$title = $lang->trl($iniObj->serviceName);
switch ($sub_page) {
        
    case "ajouter":
        include "add_categorie.php";
        break;
    case "company_new":
        include "company_new.php";
        break;
    default:
        include "categorie.php";
        break;
}
