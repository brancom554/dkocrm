<?php

// $lib->debug($_REQUEST);
// exit;

if (isset($_REQUEST)) {
    $mission_id = $_REQUEST['mission_id'];
    $new_stat = 2;
    $act = $sqlData->actMission($mission_id, $new_stat);
    // $lib->debug($act);
    // exit;
    if ($act == 1) {
        echo 'true||' . $lang->trl('Mission carried out');
        exit;
    } else {
        echo 'false||' . $lang->trl('Mission not carried out');
        exit;
    }
}
