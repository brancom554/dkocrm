<?php
$actvmenu = "mission";
$user_id = $_SESSION['customer']['user_id'];
$missions = $sqlData->getMissions($user_id)['data'];
//$lib->debug($missions);
//exit;

if(file_exists(_VIEW_PATH."/customer/mission_list.phtml"))  $view="/customer/mission_list.phtml";
else  $view="/customer/mission_list.phtml";