<?php

$actvmenu = "categories";

$categories = $sqlData->getAllCategories()['data'];

if (file_exists(_VIEW_PATH . "/customer/categories.phtml"))  $view = "/customer/categorie.phtml";
else  $view = "/customer/categorie.phtml";