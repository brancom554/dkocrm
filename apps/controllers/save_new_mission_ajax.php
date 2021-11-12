<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$current_date = date('Y/m/d H:i:s');


if (isset($_REQUEST)) {
    $mission_label = htmlspecialchars($_REQUEST['mission_label'], ENT_QUOTES, "UTF-8");
    $mission_compagny = htmlspecialchars($_REQUEST['mission_compagny'], ENT_QUOTES, "UTF-8");
    $mission_contact = htmlspecialchars($_REQUEST['mission_contact'], ENT_QUOTES, "UTF-8");
    $mission_date = $_REQUEST['mission_date'];
    $reformat_mdate = date("Y/m/d H:i:s", strtotime($_REQUEST['mission_date']));

    // $lib->debug($reformat_mdate);
    // exit;

    if (empty(trim($mission_label))) {
        echo 'false||' . $lang->trl('Make sure you enter the label of the mission');
        exit;
    } elseif (empty(trim($mission_date))) {
        echo 'false||' . $lang->trl('Please enter a date');
        exit;
    } elseif (strtotime($reformat_mdate) < strtotime($current_date)) {
        echo 'false||' . $lang->trl('Please enter a valid date');
        exit;
    } elseif (empty(trim($mission_compagny))) {
        echo 'false||' . $lang->trl('Please choose a company');
        exit;
    } elseif (empty(trim($mission_contact))) {
        echo 'false||' . $lang->trl('Please choose a contact');
        exit;
    } else {
        $creation_date = date('Y/m/d H:m:s');
        $status = 1;
        $active = 1;
        $user_create = $_SESSION['customer']['user_id'];
        $newMission = $sqlData->inserNewMission($mission_label, $mission_contact, $mission_compagny, $reformat_mdate, $creation_date, $status, $active, $user_create);
        // $lib->debug($newMission);
        // exit;
        if ($newMission == 1) {
            $label = "CREATE MISSION";
            $dateAction = date('Y/m/d H:m:s');
            $user = $_SESSION['customer']['user_id'];
            $active = 1;
            $insertAction = $sqlData->newAction($label, $dateAction, $user, $active);
            echo 'true||' . $lang->trl('Mission successfully registered');
            exit;
        } else {
            echo 'false||' . $lang->trl('Mission not registered please try again');
            exit;
        }
    }
}
