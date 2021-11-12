<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if (isset($_REQUEST)) {
  $mission_id = $_REQUEST['id'];
  $mission = $sqlData->getMissionbyId($mission_id)['data'][0];
  //    $lib->debug($mission);
  //    exit;
  $now = date('Y-m-d');
  $days = $sqlData->dateDiff($now, $mission->mission_date);
  //    $lib->debug($mission->mission_date);
  //    exit;

  $output = '';
  if ($mission) {
    $output = '<div class="card">
          <div class="card-header">
            <h3 class="card-title">' . $mission->type . '</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body p-0">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>' . $lang->trl('Company') . '</th>
                  <th>' . $lang->trl('Contact') . '</th>
                  <th>' . $lang->trl('Prospector') . '</th>
                  <th>' . $lang->trl('Mission date') . '</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>' . $mission->company . '</td>
                  <td>' . ucfirst($mission->contact_firstname) . ' ' . ucfirst($mission->contact_lastname) . '</td>
                  <td>' . ucfirst($mission->user_firstname) . ' ' . ucfirst($mission->user_lastname) . '</td>
                  <td>' . $sqlData->refomat_date($mission->mission_date, $format = 'full') . '</td>
                  <td><span class="badge bg-info">' . ($mission->status == 2 ? $lang->trl('carried out') : $days.' '.$lang->trl('remain day'))  . '</span></td>    
                </tr>
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>';
    echo $output;
    exit;
  }
}
