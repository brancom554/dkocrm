<?php
$actvmenu = "geolocalisation";
$sql = "SELECT users.firstname,users.lastname,gps_lon,gps_lat FROM mission_tracking INNER JOIN users ON mission_tracking.agent_name=users.user_id WHERE mission_id IS NOT NULL";
$data = [];
$data['gps'] = $sqlData->getDataToTable($sql);
//var_dump($data['gps']);



if (file_exists(_VIEW_PATH . "/customer/geolocalisation.phtml"))  $view = "/customer/geolocalisation.phtml";
else  $view = "/customer/geolocalisation.phtml";