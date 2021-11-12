<?php

// $lib->debug($_REQUEST);
// exit;

if (isset($_REQUEST)) {
    $contact_id = $_REQUEST['contact'];
    $updateStat = $sqlData->desableContact($contact_id);
    if ($updateStat == 1) {
        echo 'true||OK';
        exit;
    } else {
        echo 'false||'.$lang->trl('Error, please try again');
        exit;
    }
}
