<?php

require '../model/roulette.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['id_usuario'])) {
    $id_usuario = $_POST['id_usuario'];

    $winner = Roulette::mdlVerifyUserWinner($id_usuario);

    if(!$winner) {
        echo '{"response":"success","message": "Winner not found"}';
    }
    else {
        echo '{"response":"error","message":' . json_encode($winner) . '}';
    }
} else {
    echo '{"response":"error","message":"POST error"}';
}