<?php

 foreach($_REQUEST as $key=>$val){
//  	echo
 	$dR = trim(urldecode($val));
//  	echo "<br> \n data request : ".$dataRequest;
//  	echo "<br> \n key request : ".$key;
//  	echo "<br> \n val request : ".$val;

	if($dR=="undefined") {
		$_REQUEST[$key] ="";
	}else{
		$_REQUEST[$key]=$dR;
	}
}

//  echo "false||".$lang->trl("Provide your full name");
//  $lib->debug($lang);
// exit;
if(empty($_REQUEST['name'])) {
// 	echo "false||".$lang->trl("Provide your full name");
}
else if(empty($_REQUEST['email'])) {
// 	echo "false||".$lang->trl("Provide the e-mail address where you can be contacted at");
}
else if(empty($_REQUEST['phone'])) {
// 	echo "false||".$lang->trl("Provide the phone number where you can be contacted at");
}
else if(empty($_REQUEST['comments'])) {
// 	echo "false||".$lang->trl("Please type your message");
}

else{

// 	echo "false||ELSE-".$lang->trl("Provide your full name");
// 	$lib->debug($lang);
// 	exit;
// 	echo "false||".$lib->trl('Your message has been sent. Thank you. You will be contacted at the earliest');
// 	$lib->debug($lang);
// 	exit;
	$content="Nom : ".stripslashes($_REQUEST['name'])."\n".
			"Email : ".stripslashes($_REQUEST['email'])."\n".
			"Tél : ".stripslashes($_REQUEST['phone'])."\n\n".
			stripslashes(strip_tags ($_REQUEST['comments']));
	if ($lib->SendContactUsMail($iniObj->emailContact,$_REQUEST['email']
			,stripslashes($_REQUEST['name'])
			,'Contact Internet - '.stripslashes($_REQUEST['name']),$content)){
		echo 'true||'.$lang->trl('Thank you.Your message has been sent. Thank you. You will be contacted at the earliest');
	}
	else{ echo 'false'.$lang->trl('Your message could not be sent. Please try again');
	}
}
