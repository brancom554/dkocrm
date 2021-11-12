<?php

//  var_dump($page_requested);
//  die;
switch ($page_requested) {

    case "magasin":
        include "magasin_page.php";
        break;
    case "site":
        $storeUrl = urldecode($param2[0]);
        include "magasin_page.php";
        break;
    case "prix":
        include "prix_en_baisse_page.php";
        break;

    case "checkout":
        include "checkout_page.php";
        break;

    case 'design':
        // var_dump(_IMG_PATH . $url_array[2]);
        // exit;
        $im = imagecreatefrompng(_IMG_PATH . $url_array[2]);
        // header('Content-Type: image/png'); 
        // $im = ;

        return $im;
        
        // imagepng($im);
        // imagedestroy($im);
        exit();
        break;

    case 'editcompany':
        include 'company_edit.php';
        break;
    case 'company':
        include 'company_view.php';
        break;
    case "sousCategory":
        include "sub_category_page.php";
        break;
    case 'updatecompany':
        include 'ajax_updatecompany.php';
        break;
    case "category":
    case "famille":
    case "espace":
        include "category_page.php";
        break;

    case "search":
        include "product_search_page.php";
        break;

    case "sousFamille":
    case "subCategory":
    case "rayon":
        include "sub_category_page.php";
        break;
    case "product":
    case "article":
        include "product_page.php";
        break;

    case "imgView":
        include 'view_image.php';
        exit;
        break;
    case 'mission':
        include 'singlemission.php';
        break;
    case 'editcontact':
        include 'editcontact.php';
        break;
    case "contacter":
    case "contact":
        //include "contact.php";
        $view = "contact.phtml";
        break;

    case "sendMessage":
        include "contact.php";
        exit;
        break;

    case "customer":
    case $iniObj->serviceName:

        include "customer.php";
        break;

    case 'jsp':
        header("Content-Type: text/javascript");
        include(_JS_PATH . $url_array[2]);
        exit;
        break;
    case 'ajsp':
        header("Content-Type: text/javascript");
        include(_JS_A_PATH . $url_array[3]);
        exit;
        break;

    case 'corpCss':
        include(_CSS_PATH . $url_array[3]);
        exit;
        break;

    case 'design':
        $im = imagecreatefrompng(_IMG_PATH . $url_array[3]);
        header('Content-Type: image/png');
        imagepng($im);
        imagedestroy($im);
        exit;
        break;

    case 'xml':
        include(_LIB_PATH . "/xmlDataRequest.php");
        exit;
        break;

    case 'json':
        include(_LIB_PATH . "jsonDataRequest.php");
        exit;
        break;

    case "lang":
        $cntFile = "/change_lang.php";
        include _CONTROLER_PATH . $cntFile;
        exit;
        break;

    case "maintenance":
        include _VIEW_PATH . "maintenance.html";
        break;
        exit;

    case "testPunch":
        include "puchOutTest.php";
        exit;
        break;
    case "receivePunchOut":
        include "puchOutReceiveCart.php";
        exit;
        break;
    case "sendOrderPunchOut":
        include "puchOutTestOrder.php";
        exit;
        break;
    case "cgu":
        $view = "fr/cgu.phtml";
        break;
    case "mentionslegales":
        $view = "fr/mentions_legales.phtml";
        break;

    case "professionnels":
        $view = $viewPath . "/" . $lib->lang . "/" . "professionnels.phtml";
        break;

    case "map-points":
        $view = $viewPath . "/" . $lib->lang . "/" . "map_points.phtml";
        break;
    case "login":
        // $view = $viewPath . "login.phtml";
        include 'customer_login_AJAX.php';
        break;
    case 'resetpass':
        include 'resetpassword.php';
        break;
    case 'sendpass':
        include 'ajax_senpass.php';
        break;

    default:
        include "login.php";
        break;
}
