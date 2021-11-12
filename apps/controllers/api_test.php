<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require _LIB_PATH . 'vendor/autoload.php';

$client = new OAuth2\Client(getenv('oU1mvKM0ZZW0mmdtZ-9XM59nWoS1LNzezNZVsVBwLji00viNo-zRvUS27vkvcyNE'),
                            getenv('aPAfiTvsUkSaRgcgKNgXdNz_f1zEHXYOT34Mk2FUW2QJXH89XwEknlUk1r-Ech96'));

// You'll need to use exactly the same redirect URI as in the last step
$response = $client->getAccessToken(
    'https://connect-sandbox.gocardless.com/oauth/sandbox_KtY329okGbe3u8qX8UfWggsDV9V3wGdhikIMldei',
    'authorization_code',
    ['code' => $_GET['code'], 'redirect_uri' => 'http://teomd.test/gocardlesscallback']
);

$payload = ['gocardless_access_token' => $response['result']['access_token'],
            'gocardless_organisation_id' => $response['result']['organisation_id']];

$currentUser->update($payload);
//$lib->debug($currentUser);
//exit;

