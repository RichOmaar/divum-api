<?php

require '../model/beautyServices.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$response = array();

for ($i = 1; $i < 4; $i++) {
    $services = BeautyServices::mdlGetServices($i, 5);
    
    if ($services) {
        $response[] = $services;
    }
}

if (empty($response)) {
    echo '{"response":"error","message":"No services found"}';
} else {
    echo '{"response":"success","services": '.json_encode($response).'}';
}
