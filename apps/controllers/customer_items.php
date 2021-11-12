<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$items = $sqlData->getAllItems()['data'];

$data = array();

foreach ($items as $key => $item) {
    $data = array(
        $item->name
    );
}

echo json_encode($data);
exit;
