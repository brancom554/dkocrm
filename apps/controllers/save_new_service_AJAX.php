<?php

unset($error);
foreach ($_REQUEST as $k => $v) {
	$_REQUEST[$k] = urldecode(trim($v));
}
// $lib->debug($_REQUEST);

// $filename = $_FILES['contacts_csv']['tmp_name'];
// if ($_FILES['contacts_csv']['size'] > 0) {
// }
// $file = fopen($filename, "r");
// $array_contacts = [];
// $column = fgetcsv($file,10000, ";");

// 	var_dump($column) ;

// // $lib->debug($array_contacts);
// exit;

if (isset($_REQUEST)) {
	$contact_id = htmlspecialchars($_REQUEST['contact_id'], ENT_QUOTES, "UTF-8");
	$company_id = htmlspecialchars($_REQUEST['company_id'], ENT_QUOTES, "UTF-8");
	$servicelabel = htmlspecialchars($_REQUEST['servicelabel'], ENT_QUOTES, "UTF-8");

	// die;s
	if (empty(trim($contact_id))) {
		echo "false||Veuillez renseigner le nom de la société";
		exit;
	} elseif (empty(trim($company_id))) {
		echo "false||Veuillez renseigner le code postal";
		exit;
	} elseif (empty(trim($servicelabel))) {
		echo "false||Veuillez confirmer le domaine d'activité";
		exit;
	} else {
		$verify_service = $sqlData->getServiceByName($servicelabel);
		$lib->debug($verify_service);
		die;
		if ($verify_service['rows'] == 0) {
			$insert_service = $sqlData->saveNewService($servicelabel);
			$insert_desired_services = $sqlData->saveNewDesiredService($contact_id,$verify_service['data']->service_id);
		}
		$lib->debug($verify_service['data']);
		$lib->debug($insert_desired_services);
		exit;
		if (count($verify_contact['data']) != 0) {
			echo 'false||Ce contact existe déjà';
			exit;
		} else {
			$register_company = $sqlData->insertNewContact($first_name, $last_name, $email, $phone_number, $fonction, $is_active, $interest_level, $company, $is_manager);
			// $lib->debug($register_company);

			if ($register_company) {
				echo 'true||Contact enregistré avec succès';
				exit;
			}
		}
	}
}
exit;
