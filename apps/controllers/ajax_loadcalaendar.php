<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$user_id = $_SESSION['customer']['user_id'];
$current = date('Y/m/d H:i:s');
if ($_SESSION['customer']['role_id'] == 1) {
    $missions = $sqlData->getcalendarMission()['data'];
} else if ($_SESSION['customer']['role_id'] == 2) {
    $missions = $sqlData->getcalendarMission($user_id)['data'];
}
// $lib->debug($missions);
// exit;
$data = array();

foreach ($missions as $key => $mission) {
    $color = "";
    if ($mission->status == 1 && strtotime($mission->mission_date) < strtotime($current)) {
        $color = "#FF0000";
    } else if ($mission->status == 1) {
        $color = "#6495ED";
    } else if ($mission->status == 2) {
        $color = "#008000";
    }

    $data[] = array(
        'id' => $mission->mission_id,
        'title' => ucfirst($mission->title) . ' ' . ucfirst($mission->company) . ' ' . $lang->trl('Planned By') . ' ' . ucfirst($mission->firstname) . ' ' . ucfirst($mission->lasname),
        'start' => $mission->mission_date,
        'color' => $color
    );
}

echo json_encode($data);
//echo json_encode($missions);
exit;
