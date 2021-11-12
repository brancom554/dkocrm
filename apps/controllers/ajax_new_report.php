<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//    $lib->debug($_REQUEST);die;
//    exit;

if (isset($_REQUEST)) {
    $report = urldecode($_REQUEST['report']);
    if (empty($report)) {
        echo 'false||'.$lang->trl('Enter a report');
        exit;
    } else {
        $report_date = date('Y-m-d H:i:s');
        $active = 1;
        $user_id = $_SESSION['customer']['user_id'];
        $mission_id = $_REQUEST['mission_id'];
        $company_id = $_REQUEST['company_id'];

        // $lib->debug($company_id);die;

        $newreport = $sqlData->addReport($report, $report_date, $user_id, $company_id, $mission_id, $active);

        if ($newreport == 1) {
            echo 'true||'.$lang->trl('Report add successfully');
            exit;
        } else {
            echo 'false||'.$lang->trl('Error, please try again');
            exit;
        }
    }
}