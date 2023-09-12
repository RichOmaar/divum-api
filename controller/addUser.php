<?php

require '../model/user.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['nombre']) && isset($_POST['titulo']) && isset($_POST['descripcionPersonal'])) {
    $nombre = $_POST['nombre'];
    $titulo = $_POST['titulo'];
    $descripcionPersonal = $_POST['descripcionPersonal'];

    $user = User::mdlAddUser($nombre, $titulo, $descripcionPersonal);

    if(!$user) {
        echo '{"response":"error","message":"User not added"}';
        return;
    } else {

        $email = $_POST['email'];
        $password = $_POST['password'];

        $password = password_hash($password, PASSWORD_DEFAULT);

        $userLogin = User::mdlAddUserLogin($user, $email, $password);

        if(!$userLogin) {
            echo '{"response":"error","message":"User login not added"}';
            return;
        } else {
            echo '{"response":"success","user":'.json_encode($user).'}';
            return;
        }
    }
} else {
    echo '{"response":"error","message":"User error"}';
    return;
}