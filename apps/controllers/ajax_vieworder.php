<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* if($rder){
  echo 'true||';
  exit;
  } */
//$order = $sqlData->getOrderDetail($_POST['id']);


if (isset($_POST['id'])) {
    $order = $sqlData->getOrderDetail($_POST['id']);
    //$lib->debug($order['data']);
    //exit;
    $output = '';
    if ($order) {
        $output = '<div class="card">
                        <div class="card-body">
                            <div class="clearfix">
                                <div class="float-left">
                                    <h4><b>'.$order['data'][0]->code.'</b></h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table mt-4">
                                            <thead>
                                                <tr>
                                                    <th>Article</th>
                                                    <th>Quantité</th>
                                                    <th>Prix Unit</th>
                                                    <th class="text-right">Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>';
        foreach ($order['data'] as $key => $row) {
            $output .= ' <tr>
                            <td>' . $row->itemname . '</td>
                            <td>' . $row->quantity . '</td>
                            <td>$' . $row->itemprice . '</td>
                            <td class="text-right">$' . $row->subtotal . '</td>
                        </tr>';
        }
        $output .= '
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6"></div>
                                <div class="col-6">
                                    <div class="float-right">
                                        <h3><b>Total :</b>$'.$order['data'][0]->total.' </h3>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>';
        echo $output;
        exit;
    }
}
