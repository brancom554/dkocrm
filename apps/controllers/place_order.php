<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//delete_cartdetails
//require _LIB_PATH.'vendor/autoload.php';
//$lib->debug($_REQUEST);
//exit;

if (isset($_REQUEST)) {

    $address_contact = $_REQUEST['adddress'];
    $contact = $_SESSION['customer']['contact_id'];



    $postalcode = trim($_REQUEST['address_postal']);
    $street = trim($_REQUEST['adddress']);
    $city = $_REQUEST['address_city'];
    $country = $_REQUEST['country'];
    if (empty(trim($address_contact))) {
        echo 'false||Veillez entrer un adresse de livraison';
        exit;
    } else {
        $checkAdress = $sqlData->checkAddress($contact);

        if ($checkAdress['rows'] == 0) {

            $adressid = $sqlData->creatAddress($postalcode, $street, $city, $country, 1, $contact);
        } else {
            $adressid = $checkAdress['data'][0]->address_id;
        }

        $supplier_ref = "REF FOURNISSEUR";
        $now = date('Y/m/d'); //current date/time
        //$now->add(new DateInterval("PT{$hours}H"));
        $delivery_date = $now;
        $delivery_stat = 2;
        $is_available = 0;
        $newdelivery = $sqlData->createDelivery($supplier_ref, $delivery_date, $delivery_stat, $is_available);

        //$lib->debug($newdelivery);
        //exit;

        $code_order = "ORD" . date('YmdHms');
        $date_order = date('Y/m/d H:m:s');
        $paymethod = 0;

        $total = 0;

        foreach ($_SESSION['shopping_cart'] as $keys => $cartdetail) {
            $total = $total + ($cartdetail['item_quantity'] * $cartdetail['item_price']);
        }

        if ($_REQUEST['methode'] == "virement" || $_REQUEST['methode'] == "checque") {
            $order_status = 4;
        } else {
            $order_status = 2;
        }


        //order id
        $orderid = $sqlData->newOrder($code_order, $date_order, $total, $order_status, $adressid, $newdelivery, $contact);
        //get user cart 
        // $getCart = $sqlData->checkCart($contact);
        //$cartid = $getCart['data'][0]->cart_id;
        //get all cart detail 
        //$checkdetailscart = $sqlData->checkcartdetailByCart($cartid)['data'];
        //$lib->debug($checkdetailscart);
        //exit;
        //insert order details

        $move_flag = 0;
        $inventory_date = date('Y/m/d H:m:s');


        //getItemdetail($id)
        //newInvetory($item_id, $order_id, $product_ref, $quatity,$invotory_date,$move_flag)

        foreach ($_SESSION['shopping_cart'] as $keys => $values) {

            $updateItemStock = $sqlData->updateItemStock($values['item_id'], $values['item_quantity']);
            $newinventory = $sqlData->newInvetory($values['item_id'], $orderid, $values['item_quantity'], $inventory_date, $move_flag);
            $insertOderDetails = $sqlData->inserOrdDetails($values['item_quantity'], ($values['item_price'] * intval($values['item_quantity'])), $orderid, $values['item_id']);
            //$i++;
        }
//        $lib->debug($newinventory);
//        exit;

        if ($insertOderDetails == 1) {
            unset($_SESSION['shopping_cart']);
            //echo 'OK||Checkout Done !';
            //echo $orderid; 
            //exit;

            if ($_REQUEST['methode'] == "virement") {
                $pay_method = 4;
                $user_id = $_SESSION['customer']['contact_id'];
                $date_pay = date('Y/m/d H:m:s');
                $payref = (isset($_REQUEST['tranref']) ? $_REQUEST['tranref'] : 'VIR' . date('YmdHms'));
                $active = 1;
                $order = $orderid;
                $status = 2;
                $newpayment = $sqlData->NewPayment($pay_method, $user_id, $date_pay, $order, $payref, $active, $status);
//                $lib->debug($newpayment);
//                exit;

                if ($newpayment == 1) {
                    $template = $sqlData->getTemplate(11);
                    $message = '';
                    $subject = '';
                    $keywordsContent = array(
                        "{SERVICE}" => $iniObj->serviceName,
                        "{ORDER}" => $code_order,
                        "{COSTUMER_NAME}" => ucfirst($_REQUEST['lastname']) . ' ' . ucfirst($_REQUEST['firstname']),
                        "{ADDRESS}" => $iniObj->companyAddress,
                        "{ZIPCODE}" => $iniObj->companyZipCode,
                        "{DATE}" => date('d/m/Y H:m:s'),
                        "{COMPCITY}" => $iniObj->companyCity,
                        "{COMPCOUNTRY}" => $iniObj->companyCountry,
                        "{COMPEMAIL}" => $iniObj->contactReply,
                        "{COMPPHONE}" => $iniObj->companyPhoneNum
                    );
                    $keywordsSubject = array(
                        //"{id}" => $val->shipping_id,
                        "{SERVICE}" => $iniObj->serviceName
                    );
                    //$lib->debug($template);
                    //exit;
                    $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->body);
                    $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

//        $lib->debug($subject);
//        exit;

                    $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $_REQUEST['email'], $subject, $message
                            , $cc = $iniObj->emailContact
                    );
                    if ($newpayment == 1) {
                        echo 'true||Les informations liées au virement banquaire ont été envoyés à votre adresse mail';
                        exit;
                    }
                }
            } elseif ($_REQUEST['methode'] == "checque") {

                $pay_method = 5;
                $user_id = $_SESSION['customer']['contact_id'];
                $date_pay = date('Y/m/d H:m:s');
                $payref = (isset($_REQUEST['tranref']) ? $_REQUEST['tranref'] : 'PAY ' . date('YmdHms'));
                $active = 1;
                $order = $orderid;
                $status = 2;

                //Save Payment
                $newpayment = $sqlData->NewPayment($pay_method, $user_id, $date_pay, $order, $payref, $active, $status);

                if ($newpayment == 1) {
                    $template = $sqlData->getTemplate(12);
//        $lib->debug($template);
//        exit;
                    $message = '';
                    $subject = '';
                    $keywordsContent = array(
                        "{SERVICE}" => $iniObj->serviceName,
                        "{ORDER}" => $code_order,
                        "{COSTUMER_NAME}" => ucfirst($_REQUEST['lastname']) . ' ' . ucfirst($_REQUEST['firstname']),
                        "{ADDRESS}" => $iniObj->companyAddress,
                        "{DATE}" => date('d/m/Y H:m:s'),
                        "{ZIPCODE}" => $iniObj->companyZipCode,
                        "{COMPCITY}" => $iniObj->companyCity,
                        "{COMPCOUNTRY}" => $iniObj->companyCountry,
                        "{COMPEMAIL}" => $iniObj->contactReply,
                        "{COMPPHONE}" => $iniObj->companyPhoneNum
                    );
                    $keywordsSubject = array(
                        //"{id}" => $val->shipping_id,
                        "{SERVICE}" => $iniObj->serviceName
                    );
                    //$lib->debug($template);
                    //exit;
                    $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->body);
                    $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

//        $lib->debug($subject);
//        exit;

                    $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $_REQUEST['email'], $subject, $message
                            , $cc = $iniObj->emailContact
                    );

                    if ($sendmail) {
                        echo 'true||Les informations liées au paiement par checque ont été envoyés à votre adresse mail';
                        exit;
                    }
                }
            } elseif ($_REQUEST['methode'] == "paypal") {

                $pay_method = 1;
                $user_id = $_SESSION['customer']['contact_id'];
                $date_pay = date('Y/m/d H:m:s');
                $payref = (isset($_REQUEST['tranref']) ? $_REQUEST['tranref'] : 'PAY ' . date('YmdHms'));
                $active = 1;
                $order = $orderid;
                $status = 1;

//                $lib->debug($payref);
//                exit;

                $newpayment = $sqlData->NewPayment($pay_method, $user_id, $date_pay, $order, $payref, $active, $status);




                if ($newpayment == 1) {

                    $template = $sqlData->getTemplate(13);
//        $lib->debug($template);
//        exit;
                    $message = '';
                    $subject = '';
                    $keywordsContent = array(
                        "{SERVICE}" => $iniObj->serviceName,
                        "{ORDER}" => $code_order,
                        "{COSTUMER_NAME}" => ucfirst($_REQUEST['lastname']) . ' ' . ucfirst($_REQUEST['firstname']),
                        "{ADDRESS}" => $iniObj->companyAddress,
                        "{DATE}" => date('d/m/Y H:m:s'),
                        "{ZIPCODE}" => $iniObj->companyZipCode,
                        "{COMPCITY}" => $iniObj->companyCity,
                        "{COMPCOUNTRY}" => $iniObj->companyCountry,
                        "{COMPEMAIL}" => $iniObj->contactReply,
                        "{COMPPHONE}" => $iniObj->companyPhoneNum
                    );
                    $keywordsSubject = array(
                        //"{id}" => $val->shipping_id,
                        "{SERVICE}" => $iniObj->serviceName
                    );
                    //$lib->debug($template);
                    //exit;
                    $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->body);
                    $subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);

//        $lib->debug($subject);
//        exit;

                    $sendmail = $lib->sendEmailNoCC($iniObj->emailContact, $_REQUEST['email'], $subject, $message
                            , $cc = $iniObj->emailContact
                    );

                    if ($sendmail) {
                        echo 'true||Les informations liées au paiement par checque ont été envoyés à votre adresse mail';
                        exit;
                    }
                }
            }
        }
    }
}

    