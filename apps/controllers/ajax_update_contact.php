<?php
  

if (isset($_REQUEST)) {
    $contact_id = $_REQUEST['contact_id'];
    $firstname = urldecode($_REQUEST['first_name']);
    $lastname = urldecode($_REQUEST['last_name']);
    $phone = urldecode($_REQUEST['phone_number']);
    $fonction = urldecode($_REQUEST['fonction']);
    $company = urldecode($_REQUEST['company']);
    $email = urldecode($_REQUEST['email']);
  

    if((empty($firstname)) || (empty($lastname)) || (empty($phone)) || (empty($fonction)) ||(empty($company)) || (empty($email))){
        echo 'false||'.$lang->trl('Please fill all the required fields');
        exit;
    }else{
        // $lib->debug($lastname);
        // exit;
        $updatecontact = $sqlData->updatecontact($contact_id, $firstname, $lastname, $email, $phone, $fonction, $company);
        
        if($updatecontact){
            echo 'true||'.$lang->trl('Contact updated');
            exit;
        }else{
            echo 'false||'.$lang->trl('Error, please try again');
            exit;
        }
    }
}
