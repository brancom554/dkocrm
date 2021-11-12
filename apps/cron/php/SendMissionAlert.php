<?php
@ini_set("display_errors",0);
DEFINE("_PATH_ROOT", realpath(dirname(__FILE__))); // test local
defined('_APPS_PATH')  || define('_APPS_PATH', realpath(dirname(__FILE__) . '/../..'));
define('_ROOT_FILES',realpath(dirname(__FILE__) . '/../../'));
define("_CONFIG_PATH",_APPS_PATH."/config/");
require(_CONFIG_PATH."config.path.php");

$pod = $sqlData->getMissions();

 $lib->debug($pod['data']);die;

if(count($pod['data']) >0){
  /* Locate the email template */
	  $FRTemplate = $sqlData->getTemplate(16); // loading FR email template
  /* Loading user preferences along with email address for each shipping */
	  $content='';
  foreach ($pod['data'] as $keys=>$val){
  	/* Replacing content from template */
    $content.='<tr>
              <td><strong>'.$val->type.'</strong></td>
              <td>'.$val->company.'</td>
              <td nowrap>'.$val->mission_date.'</td>
              <td nowrap>'.$val->expected_time.'</td>
              <td>'.$val->nb_items.'</td>
              <td>'.$val->content.'</td>
              <td>'.$val->adShipto.'</td>
              <td>'.$val->adSource.'</td></tr>';
  }
  $keywordsContent = array( "{LISTING}" => $content
  		,"{SERVICE}" => $iniObj->serviceName
  		,"{SITE_URL}"=> $iniObj->siteUrl
  		,"{COMPANY_NAME}"=>$iniObj->companyName
  		,"{COMPANY_ADDRESS}"=>$iniObj->companyAddress
  		,"{COMPANY_ZIP_CODE}"=>$iniObj->companyZipCode
  		,"{COMPANY_CITY}"=>$iniObj->companyCity
  		,"{COMPANY_COUNTRY}"=>$iniObj->companyCountry
  		,"{COMPANY_PHONE}"=>$iniObj->companyPhoneNum
  		,"{COMPANY_FAX}"=>$iniObj->companyFaxNum

  );

    /* derive language name based on user language */
  $userTemplate="{$val->language_code}Template";
  $message = str_replace(array_keys($keywordsContent), array_values($keywordsContent), $FRTemplate['data'][0]->body);
  $subject = $FRTemplate['data'][0]->subject." - ".date("d-m-Y");
//  if($lib->sendEmailAlert($iniObj->emailContact,$iniObj->emailTracking,$subject,$message)) {
  if($lib->sendEmailAlert($iniObj->smtpUser,$iniObj->smtpUser,$subject,$message)) {
        $error=1;
  }
}

