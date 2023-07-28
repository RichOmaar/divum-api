<?php

require '../model/beautyServices.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['slug'])) {
    $slug = $_POST['slug'];

    $service = BeautyServices::mdlGetServiceInfo($slug);

    if(!$service) {
        echo '{"response":"error","message":"No service found"}';
        return;
    } else {
        echo '{"response":"success","service": '.json_encode($service).'}';
        return;
    }

} else {
    echo '{"response":"error","message":"No slug specified"}';
    return;
}