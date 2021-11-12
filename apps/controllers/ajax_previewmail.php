<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$lib->debug($_REQUEST);
//exit;

if (isset($_REQUEST)) {
    $mail = $_REQUEST['message'];
    $contact_id = $_REQUEST['contact'];
    $company_id = $_REQUEST['company'];
    $emailtype_id = $_REQUEST['emailtype'];
    $subject_mail = $_REQUEST['object'];

    $contact = $sqlData->getContacts($contact_id)['data'][0];

    $template = $sqlData->getMailTemplate($emailtype_id);


    $message = '';
    $subject = '';
    if (empty($emailtype_id)) {
        $message = '<div class="alert alert-warning alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <h5><i class="icon fas fa-exclamation-triangle"></i> '.$lang->trl('Attention').'!</h5>
                  '.$lang->trl('Choose an email type before viewing email').'.
                </div>';
    } else {
        $keywordsContent = array(
            "{SERVICE}" => $iniObj->serviceName,
            "{MESSAGE}" => $mail,
            "{COSTUMER_NAME}" => ucfirst($_REQUEST['lastname']) . ' ' . ucfirst($_REQUEST['firstname']),
            "{ADDRESS}" => $iniObj->companyAddress,
            "{ZIPCODE}" => $iniObj->companyZipCode,
            "{COMPCITY}" => $iniObj->companyCity,
            "{COMPCOUNTRY}" => $iniObj->companyCountry,
            "{COMPEMAIL}" => $iniObj->contactReply,
            "{COMPPHONE}" => $iniObj->companyPhoneNum
        );
        $keywordsSubject = array(
            //"{id}" => $val->shipping_id,
            "{SERVICE}" => $iniObj->serviceName,
            "{SUBJECT}" => $subject_mail
        );
        $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->content);
        $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);
    }


    echo $message;
    exit;
}