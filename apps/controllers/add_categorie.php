<?php
if(isset($_POST['name'])){
    $uploaddir = _WEB_FILES.'uploads/';
    $uploadfile = $uploaddir . basename($_FILES['avatar']['name']);

    $p = $_SERVER['SERVER_NAME']."/uploads/".$_FILES['avatar']['name'];
    if (move_uploaded_file($_FILES['avatar']['tmp_name'], $uploadfile)) {
        $data = $sqlData->InsertCategorie($_POST['name'],$p);
        /*var_dump($data);
        echo "File is valid, and was successfully uploaded.\n";*/
        header('Location: /categories');
    } else {
        echo "Possible file upload attack!\n";
    }

    /*echo 'Here is some more debugging info:';*/
    //print_r($_FILES);

    die();
}

$actvmenu = "categories";



if (file_exists(_VIEW_PATH . "/customer/add_categories.phtml"))  $view = "/customer/add_categorie.phtml";
else  $view = "/customer/add_categorie.phtml";