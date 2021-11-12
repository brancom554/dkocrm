<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$page_requested = $pages;
$mission_id = urldecode($pages[1]);

$mission = $sqlData->getSingleMission($mission_id)['data'][0];
// exit;

$company_id = $mission->company_id;

// $lib->debug($company_id);die;


if (file_exists(_VIEW_PATH . $lib->lang . "/singlemission.phtml"))
    $view = $lib->lang . "/singlemission.phtml";
else
    $view = $iniObj->defaultLang . "/singlemission.phtml";