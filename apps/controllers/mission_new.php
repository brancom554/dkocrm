<?php

$actvmenu = "mission";
$companies = $sqlData->getCompAdre()['data'];

$action_types = $sqlData->getActiontype()['data'];
//$lib->debug($action_types);
//exit;
if(file_exists(_VIEW_PATH."/customer/mission_new.phtml"))  $view="/customer/mission_new.phtml";
else  $view="/customer/mission_new.phtml";