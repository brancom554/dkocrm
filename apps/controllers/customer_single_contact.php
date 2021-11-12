<?php

$contact_id = $url_array[3];

$contactdata = $sqlData->getContacts($contact_id)['data'][0];

$contacttimeline = $sqlData->getContactimeline($contact_id)['data'];
// $lib->debug($contacttimeline);exit;


$view="/customer/single_contact.phtml";