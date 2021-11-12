<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



if (isset($_REQUEST)) {
	$mail = $_REQUEST['compose'];
	$contact_id = $_REQUEST['contact_mail'];
	$company_id = $_REQUEST['company'];
	$emailtype_id = $_REQUEST['emailtype'];
	$subject_mail = $_REQUEST['object'];

	if (empty($emailtype_id)) {
		echo 'false||' . $lang->trl('Please choose an mail type');
		exit;
	} else if (empty($contact_id)) {
		echo 'false||' . $lang->trl('Please choose a contact');
		exit;
	} elseif (empty($subject_mail)) {
		echo 'false||' . $lang->trl('Please enter email subjet');
		exit;
	} else {
		$contact = $sqlData->getContacts($contact_id)['data'][0];

		$template = $sqlData->getMailTemplate($emailtype_id);


		$message = '';
		$subject = '';
		$keywordsContent = array(
			"{SERVICE}" => $iniObj->serviceName,
			"{COMPANYNAME}" => $iniObj->companyName,
			"{MESSAGE}" => $mail,
			"{COSTUMER_NAME}" => ucfirst($_REQUEST['lastname']) . ' ' . ucfirst($_REQUEST['firstname']),
			"{ADDRESS}" => $iniObj->companyAddress,
			"{ZIPCODE}" => $iniObj->companyZipCode,
			"{COMPCITY}" => $iniObj->companyCity,
			"{COMPCOUNTRY}" => $iniObj->companyCountry,
			"{COMPEMAIL}" => $iniObj->contactReply,
			"{COMPPHONE}" => $iniObj->companyPhoneNum,
			"{COMPFAX}" => $iniObj->companyFaxNum,
			"{SITE_URL}" => $iniObj->siteUrl,
			"{LOGO}" => _IMG_PATH . 'logo_tp.png'
		);
		$keywordsSubject = array(
			//"{id}" => $val->shipping_id,
			"{SERVICE}" => $iniObj->serviceName,
			"{SUBJECT}" => $subject_mail
		);


		$message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $template['data'][0]->content);

		$subject = str_replace(array_keys($keywordsSubject), array_values($keywordsSubject), $template['data'][0]->subject);
		if (!empty($_FILES['attachment']['name'])) {
			// $file = $_FILES['attechment']['name'];
			// $target_directory = _WEB_FILES . 'UIResources/attachment/';
			// $target_file = $target_directory . basename($_FILES["attachment"]["name"]);   //name is to get the file name of uploaded file
			// $filetype = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
			// $newfilename = $target_directory . $file . "." . $filetype;
			// $lib->debug($newfilename);
			// exit;
			// move_uploaded_file($_FILES["attachment"]["tmp_name"], $newfilename);
			$type = explode('.', $_FILES['attachment']['name']);
			$type = $type[count($type) - 1];

			$test = date('YmdHms');

			$file_name = $test . "." . strtolower($type);

			$file_tmp = $_FILES['attachment']['tmp_name'];
			$target = _WEB_FILES . 'UIResources/attachment/';



			// if (in_array(strtolower($type), array('jpg', 'jpeg', 'png', 'gif')) == false) {
			// 	echo 'false||Extention du fichier incorrecte, veiiller choirir un autre fichier';
			// 	exit;
			// }

			if (!file_exists(_WEB_FILES . "/UIResources/attachment/")) {
				mkdir(_WEB_FILES . "/UIResources/attachment/", 0777, true);
			}
			$ok = move_uploaded_file($file_tmp, $target . $file_name);
			$newfile = $target . $file_name;
			// $lib->debug($newfile);
			// exit;
			$sendmail = $lib->sendEmailNoCC(
				$iniObj->emailContact,
				$contact->contact_email,
				$subject,
				$message,
				$cc = $iniObj->emailContact,
				$stringAttachment = $newfile,
				$filename = $_FILES['attachment']['name']
			);
		} else {
			$sendmail = $lib->sendEmailNoCC(
				$iniObj->emailContact,
				$contact->contact_email,
				$subject,
				$message,
				$cc = $iniObj->emailContact
			);
		}


		if ($sendmail == true) {
			$type = $emailtype_id;
			$message_subject = $subject_mail;
			$message_contact = $contact_id;
			$user_sent = $_SESSION['customer']['user_id'];
			$sent_date = date('Y/m/d H:i:s');
			$sent = 1;
			$active = 1;
			$savemail = $sqlData->newMessage($type, $message_subject, $message_contact, $user_sent, $sent_date, $sent, $active);

			$status = 2;
			$mission_label = 2;
			$newMission = $sqlData->inserNewMission($mission_label, $contact_id, $company_id, $sent_date, $sent_date, $status, $active, $user_sent);


			// Action
			$label = "SEND EMAIL TO " . $contact->contact_email;
			$dateAction = date('Y/m/d H:i:s');
			$user = $_SESSION['customer']['user_id'];
			$insertAction = $sqlData->newAction($label, $dateAction, $user, $active);
			//        $lib->debug($insertAction);
			//        exit;

			echo 'true||' . $lang->trl('Mail sent');
			exit;
		} else {
			echo 'false||' . $lang->trl('Error, please try again');
			exit;
		}
	}
}
