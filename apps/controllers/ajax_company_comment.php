<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if ($_REQUEST) {
    $company_id = $_REQUEST['company_id'];
    $comments = $sqlData->getcomComment($company_id)['data'];
//    $lib->debug($comments);
// $lib->debug($_REQUEST);

//    exit;

    $output = ' ';
    foreach ($comments as $key => $comment) {
        if($comment->image){
            $path = $iniObj->imgProfilePath . $comment->image;
        }else {
            $path = $iniObj->UIPath.'/img/user_placeholder.png';
        }
        $output = $output . '<div class="post">
                                        <div class="user-block">
                                            <img class="img-circle img-bordered-sm" src="' . $path . '" alt="user image">
                                            <span class="username">
                                                <a href="#">' . ucfirst($comment->user_firstname) . ' ' . strtoupper($comment->user_lastname) . '</a>
                                            </span>
                                            <span class="description">' . $sqlData->refomat_date($comment->comment_date, $format = 'full') . '</span>
                                        </div>
                                        <!-- /.user-block -->
                                        <p>
                                            ' . $comment->comment_text . '
                                        </p>
                                    </div>';
    }

    echo $output;
    exit;
}

