<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if (isset($_REQUEST)) {
    $user_id = $_REQUEST['id'];
    $user = $sqlData->getUser($user_id)['data'][0];


    $total_email = $sqlData->getUserTotalEmail($user_id)['data'][0];
    $total_rdvphysiq = $sqlData->getUserTotalRDVphysic($user_id)['data'][0];
    $total_rdvphone = $sqlData->getUserTotalRDVphone($user_id)['data'][0];
    $total_call = $sqlData->getUserTotalcall($user_id)['data'][0];
//    $lib->debug($total_call);
//    exit;

    $output = '';
    if (isset($user_id)) {
        $output = $output . '<table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Action</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1.</td>
                            <td>Appel Prospect</td>
                            <td><span class="badge bg-danger">' . $total_call->totalaction . '</span></td>
                        </tr>
                        <tr>
                            <td>2.</td>
                            <td>Email</td>
                            <td><span class="badge bg-warning">' . $total_email->totalaction . '</span></td>
                        </tr>
                        <tr>
                            <td>3.</td>
                            <td>Rendez-vous Physique</td>
                            <td><span class="badge bg-primary">' . $total_rdvphysiq->totalaction . '</span></td>
                        </tr>
                        <tr>
                            <td>4.</td>
                            <td>Rendez-vous Téléphonique</td>
                            <td><span class="badge bg-success">' . $total_rdvphone->totalaction . '</span></td>
                        </tr>
                    </tbody>
                </table>';
    }

    echo $output;
    exit;
}
