<?php



require_once(_EXT_LIB_PATH . 'ExcelToCsv/ExcelToCsv.php');

use thecodeisbae\ExcelToCsv\ExcelToCsv;


$filename = $_FILES['company_csv']['name'];
$ext = pathinfo($filename, PATHINFO_EXTENSION);
$filetmp = $_FILES['company_csv']['tmp_name'];


if (in_array(strtolower($ext), array('xlsx', 'xls'))) {
    $convert = new ExcelToCsv($filename, $filetmp, $delimiter = ';', $savePath = _WEB_FILES . 'filesLib/csv');

    // $filexlx = $consert->getFile();

    $filexlx = $convert->convertExcelToCsv();


    $csvfile = fopen($filexlx, "r");

    // var_dump($csvfile);
    // exit;

    // $c = fgetcsv($csvfile, 1000, ";");
    fgetcsv($csvfile, 1000, ";");
    // while (!feof($csvfile)) {
    while (($column = fgetcsv($csvfile, 1000, ";")) !== FALSE) {

        // $column = fgetcsv($csvfile, 1000, ";");


        $company_name = htmlspecialchars($column[0]);
        $company_addre = htmlspecialchars($column[1]);
        $company_city = htmlspecialchars($column[2]);
        $company_country = htmlspecialchars($column[3]);
        $company_postal = htmlspecialchars($column[4]);
        $company_url = utf8_encode($column[5]);
        $company_activity = htmlspecialchars($column[6]);
        $company_type = htmlspecialchars($column[7]);
        $contactfullname = explode(' ', htmlspecialchars($column[8]));
        $contact_firstname = $contactfullname[0];
        $contact_lastname = $contactfullname[1];
        $contact_function = htmlspecialchars($column[9]);
        $contact_tel = htmlspecialchars($column[10]);
        $contcat_fax = htmlspecialchars($column[11]);
        $contcat_email = htmlspecialchars($column[12]);

        $data = array(
            "company_name" => $company_name,
            "company_addre" => $company_addre,
            "company_city" => $company_city,
            "company_country" => $company_country,
            "company_postal" => $company_postal,
            "company_url" => $company_url,
            "company_activity" => $company_activity,
            "company_type" => $company_type,
            "contact_firstname" => $contact_firstname,
            "contact_lastname" => $contact_lastname,
            "contact_function" => $contact_function,
            "contact_tel" => $contact_tel,
            "contact_email" => $contcat_email
        );
        // $lib->debug($data);
        // die;

        $savedata = $sqlData->saveCompContfromCSV($data);

        if ($savedata) {
            echo 'true||' . $lang->trl('File upload successfully');
            // exit;
        } else {
            echo 'false||' . $lang->trl('Error, please try again');
            // exit;
        }
    }

    fclose($filetmp);
}
die;




// // $convert = new ExcelToCsv('sample.xlsx', 'sample.xlsx');
// if ($convert->getFile())
//     echo 'Convertion is ended please check for the root of the project to see files :)';
// else
//     echo 'An error occured check your file extension or your filePath';
