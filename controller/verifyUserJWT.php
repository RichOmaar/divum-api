<?php

require '../model/user.php';
require './jwt.controller.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['id_usuario'])) {
    $id_usuario = $_POST['id_usuario'];

    try {
        $verifyUser = JWTController::decodeJWT('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.WyI5Il0.gjUIEvumuKGSJoduGJk0RJVw8_Rt0lipVi41aKSDOcE');
    
        echo '{"response":"success","user":'.json_encode($verifyUser).'}';
    } catch (Exception $e) {
        echo $e;
    }
}