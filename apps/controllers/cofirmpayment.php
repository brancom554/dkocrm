<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



if (isset($_REQUEST)) {
    $orderid = $_REQUEST['id'];
    $new_stat = 2;
    $order = $sqlData->getOrderDetail($orderid)['data'][0];
    $user = $sqlData->getUserData($order->contact_id)['data'][0];

    $upload_order_stat = $sqlData->updateOrderStat($orderid, $new_stat);

    if ($upload_order_stat == 1) {
        $payDetail = $sqlData->getpaymentByOrder($orderid);
        $pay_stat = 1;
        $confirmPayment = $sqlData->confirmPayment($payDetail['data'][0]->payment_audit_id, $pay_stat);

        if ($confirmPayment == 1) {
            $template = $sqlData->getTemplate(15);
            $message = '';
            $subject = '';
            $keywordsContent = array(
                "{SERVICE}" => $iniObj->serviceName,
                "{ORDER}" => $order->code,
                "{ADDRESS}" => $iniObj->companyAddress,
                "{ZIPCODE}" => $iniObj->companyZipCode,
                "{DATE}" => date('d/m/Y'),
                "{COMPCITY}" => $iniObj->companyCity,
                "{COMPCOUNTRY}" => $iniObj->companyCountry,
                "{COMPEMAIL}" => $iniObj->contactReply,
                "{COMPPHONE}" => $iniObj->companyPhoneNum
            );
            $keywordsSubject = array(
                "{SERVICE}" => $iniObj->serviceName
            );
            $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->body);
            $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);


            $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $user->email, $subject, $message
                    , $cc = $iniObj->emailContact);
            if ($sendmail) {
                echo 'true||Paiement confirmé !';
                exit;
            }
        } else {
            echo 'false||Veiller réessaayer SVP !';
            exit;
        }
    }
}