<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if (isset($_REQUEST)) {
    $contact_id = $_REQUEST['contact_id'];
    $contact = $sqlData->getcontact($contact_id)['data'][0];
//    $lib->debug($contact);
//    exit;
$status = ($contact->is_active == 1)? 'Actif' : 'Non actif';
    $output = "";
    if ($contact) {
        $output = $output . '
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  ' . $contact->company . '
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>' . ucfirst($contact->contact_firstname) . ' ' . ucfirst($contact->contact_lastname) . '</b> ('.$status.') </h2>
                      <p class="text-muted text-sm"><b>Fonction: </b>'.ucfirst($contact->title).'</p>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: ' . $contact->phone_number . '</li>
                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Email #: ' . $contact->contact_email . '</li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="' . $iniObj->UIPath . '/img/user_placeholder.png" alt="user-avatar" class="img-circle img-fluid">
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                  </div>
                </div>
              </div>';
    }
    
    echo $output;
    exit;
}