<?php

require '../model/roulette.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['id_option'])) {
    $id_option = $_POST['id_option'];
    
    $status = Roulette::mdlValidateOptionStatus($id_option);
    
    if(!$status) {
        echo '{"response":"error","message":"No option found"}';
    } else {
        echo '{"response":"success","status": '.json_encode($status).'}';
    }
} else {
    echo '{"response":"error","message":"No id option"}';
}
