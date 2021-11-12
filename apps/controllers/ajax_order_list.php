<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$orders = $sqlData->getAllOrders();

if ($orders) {
    $data = array();
    foreach ($orders['data'] as $key => $order) {
        $output = '<tr>';
        $output .= '<td>' . $order->code . '</td>
                                                <td>' . $order->date . '</td>
                                                <td>' . ucfirst($order->lastname) . ' ' . ucfirst($order->firstname) . '</td>';
        $output .= '<td>';
        if ($order->status == 2) {
            $output .= '<span class="badge badge-warning badge-pill">In progress</span>';
        } else if ($order->status == 1) {
            $output .= '<span class="badge badge-success badge-pill">Granted</span>';
        } else {
            $output .= '<span class="badge badge-danger badge-pill">Denied</span>';
        }
        $output .= '</td>';
        $output .= '<td><button type="button" data-id="' . $order->order_id . '" class="btn btn-success waves-effect waves-light" onclick="loadOrder(this.getAttribute("data-id"))">
                                                        <i class="mdi mdi-eye"></i></button></td>';
        $output .= '<td>
                                                    <div class="btn-group" role="group">
                                                        <button id="btnGroupDrop1" type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            Changer Statut <i class="mdi mdi-chevron-down"></i>
                                                        </button>
                                                        <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                                            <a class="dropdown-item switchStat" data-id="2" href="javascript:void(0)">En cours</a>
                                                            <a class="dropdown-item switchStat" data-id="1" href="javascript:void(0)">Accepter</a>
                                                            <a class="dropdown-item switchStat" data-id="0" href="javascript:void(0)">Refuser</a>
                                                        </div>
                                                    </div>
                                                </td>';
    }
    echo $output;
    exit;
}