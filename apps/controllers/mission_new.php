<?php

$actvmenu = "mission";
$companies = $sqlData->getCompAdre()['data'];
$sql = "SELECT user_id,firstname,lastname FROM users WHERE role_id=2";
$action_types = $sqlData->getActiontype()['data'];
$agents = $sqlData->getDataToTable($sql)['data'];
//$lib->debug($action_types);
//exit;
if(file_exists(_VIEW_PATH."/customer/mission_new.phtml"))  $view="/customer/mission_new.phtml";
else  $view="/customer/mission_new.phtml";