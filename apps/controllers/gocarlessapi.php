<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require _LIB_PATH . 'vendor/autoload.php';

$clientID = "oU1mvKM0ZZW0mmdtZ-9XM59nWoS1LNzezNZVsVBwLji00viNo-zRvUS27vkvcyNE";
$clientSecret = "itxFJHv-jNJPWLP-9beeXOBc13JwMMrTLNH4oNBuy1GZxEXUe2y0pHyAfBRQYl5_";


$client = new OAuth2\Client($clientID, $clientSecret);

//$authorizeUrl = $client->getAuthenticationUrl(
//        // Once you go live, this should be set to https://connect.gocardless.com. You'll also
//        // need to create a live app and update your client ID and secret.
//        'https://connect-sandbox.gocardless.com/oauth/authorize', 'http://teomd.jiscomputing.com/shop', // Your redirect URL
//        ['scope' => 'read_write',
//    'initial_view' => 'login',
//    'prefill' => ['email' => 'tim@gocardless.com',
//        'given_name' => 'Tim',
//        'family_name' => 'Rogers',
//        'organisation_name' => 'Tim\'s Fishing Store']]
//);
//
//echo $authorizeUrl;
//exit;

$response = $client->getAccessToken(
        'https://connect-sandbox.gocardless.com/oauth/access_token',
        'authorization_code', 
        ['code' => $_GET['code'], 'redirect_uri' => 'http://teomd.jiscomputing.com/shop']
);

$payload = [
    'gocardless_access_token' => $response['result']['access_token'],
    'gocardless_organisation_id' => $response['result']['organisation_id']
        ];

$currentUser->update($payload);
