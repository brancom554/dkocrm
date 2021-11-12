<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if ($_REQUEST) {
    $mission_id = $_REQUEST['mission_id'];

    $company_id = $_REQUEST['company_id'];

    // $lib->debug($company_id);die;

    $reports = $sqlData->getReport($mission_id)['data'];
//    exit;
    // $lib->debug($reports);die;
//    $lib->debug($reports);die;


    $output = ' ';
    foreach ($reports as $key => $report) {
        // if($report->image){
        //     $path = $iniObj->imgProfilePath . $report->image;
        // }else {
            $path = $iniObj->UIPath.'/img/profile/default_user.jpg';
        // }
        $output = $output . '<div class="post">
                                        <div class="user-block">
                                            <img class="img-circle img-bordered-sm" src="' . $path . '" alt="user image">
                                            <span class="username">
                                                <a href="#">' . ucfirst($report->user_firstname) . ' ' . strtoupper($report->user_lastname) . '</a>
                                            </span>
                                            <span class="description">' . $sqlData->refomat_date($report->comment_date, $format = 'full') . '</span>
                                        </div>
                                        <!-- /.user-block -->
                                        <p>
                                            ' . $report->comment_text . '
                                        </p>
                                    </div>';
    }

    echo $output;
    exit;
}

