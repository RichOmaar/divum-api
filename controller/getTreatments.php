<?php

require '../model/treatments.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['order'])) {
    $order = $_POST['order'];

    $treatments = Treatments::mdlGetTreatments($order);

    if(!$treatments) {
        echo '{"response":"error","message":"No treatments found"}';
        return;
    } else {
        echo '{"response":"success","treatments": '.json_encode($treatments).'}';
        return;
    }
} else {
    echo '{"response":"error","message":"No order specified"}';
    return;
}
