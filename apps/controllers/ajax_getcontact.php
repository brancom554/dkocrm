<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



if (isset($_REQUEST)) {
    $company = $_REQUEST['id'];
    $contactList = $sqlData->getComContacts($company)['data'];
//    $lib->debug($contacts);
//    exit;
//    header('Content-Type: application/json');
//    echo json_encode($contacts);
//    exit;
    $contact = '';
    foreach ($contactList as $key => $value) {
        $contact = $contact . '<option value=' . $value->contact_id . '> ' . ucfirst($value->contact_firstname) . ' ' . ucfirst($value->contact_lastname) . '</option>';
    }
    
    echo $contact ;
    exit;
}