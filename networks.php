<?php

require __DIR__ . '/vendor/autoload.php';

use GuzzleHttp\Client;

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');

echo (new Client())->get('https://siamd.gov.md/restapi/wqm/networks')->getBody();

