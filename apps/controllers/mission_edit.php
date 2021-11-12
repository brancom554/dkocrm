<?php
$actvmenu = "mission";
$missions = $sqlData->getMissions()['data'];
//$lib->debug($missions);
//exit;

if(file_exists(_VIEW_PATH."/customer/mission_edit.phtml"))  $view="/customer/mission_edit.phtml";
else  $view="/customer/mission_edit.phtml";