<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if (isset($_REQUEST)) {
    $company_id = urldecode($_REQUEST['company_id']);
    $company_name = urldecode($_REQUEST['company_name']);
    $company_zipcode = urldecode($_REQUEST['company_zipcode']);
    $company_city = urldecode($_REQUEST['company_city']);
    $company_adress = urldecode($_REQUEST['company_adress']);
    $company_country = urldecode($_REQUEST['company_country']);
    $activity_area = urldecode($_REQUEST['activity_area']);
    $code_naf = urldecode($_REQUEST['code_naf']);
    $company_type = urldecode($_REQUEST['company_type']);
    $website = urldecode($_REQUEST['website']);

//    $lib->debug($company_type);
//    exit;

    if (empty($company_type)) {
        echo 'false||' . $lang->trl('Choose the company type');
        exit;
    } else {
        $update_company = $sqlData->updateCompany($company_id, $company_name,$activity_area, $company_type, $code_naf,$website);
//    $lib->debug($update_company);
//    exit;
        if ($update_company == 1) {
            if((!empty($company_adress)) || (!empty($company_city)) || (!empty($company_country)) || (!empty($company_zipcode))){
                $compAdre = $sqlData->getComAdress($company_id);
                $updateAdre = $sqlData->updateAdre($compAdre['data'][0]->addresse_id,$company_adress,$company_city,$company_country,$company_zipcode,$website);
                // $lib->debug($updateAdre);
                // exit;
            }

            echo 'true||' . $lang->trl('Company updated');
            exit;
        } else {
            echo'false||' . $lang->trl('Error, please try again');
            exit;
        }
    }
}