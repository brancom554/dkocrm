<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//    $lib->debug($_REQUEST);
//    exit;

if (isset($_REQUEST)) {
    $comment = urldecode($_REQUEST['comment']);
    if (empty($comment)) {
        echo 'false||'.$lang->trl('Enter a comment');
        exit;
    } else {
        $comment_date = date('Y-m-d H:i:s');
        $active = 1;
        $user_id = $_SESSION['customer']['user_id'];
        $company_id = $_REQUEST['company_id'];
        $newcomment = $sqlData->addCompComment($comment, $comment_date, $user_id, $company_id, $active);

        if ($newcomment == 1) {
            echo 'true||'.$lang->trl('Comment add successfully');
            exit;
        } else {
            echo 'false||'.$lang->trl('Error, please try again');
            exit;
        }
    }
}