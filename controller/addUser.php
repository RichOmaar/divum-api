<?php

require '../model/user.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['nombre']) && isset($_POST['titulo']) && isset($_POST['descripcionPersonal'])) {
    $nombre = $_POST['nombre'];
    $titulo = $_POST['titulo'];
    $descripcionPersonal = $_POST['descripcionPersonal'];

    // Validate and sanitize user inputs here (e.g., $nombre, $titulo, $descripcionPersonal)

    // Create the user
    $user = User::mdlAddUser($nombre, $titulo, $descripcionPersonal);

    if(!$user) {
        echo '{"response":"error","message":"User not added"}';
        return;
    } else {
        // Handle user login separately
        if(isset($_POST['email']) && isset($_POST['password'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];

            // Validate and sanitize email and password inputs here

            // Hash the password
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            // Store the user login information
            $userLogin = User::mdlAddUserLogin($user, $email, $hashedPassword);

            if(!$userLogin) {
                echo '{"response":"error","message":"User login not added"}';
                return;
            } else {
                // Send a success response with the user's login information
                echo '{"response":"success","user":'.json_encode($userLogin).'}';
                return;
            }
        } else {
            // Handle the case where email and password are missing
            echo '{"response":"error","message":"Email and password required for login"}';
            return;
        }
    }
} else {
    // Handle the case where nombre, titulo, or descripcionPersonal is missing
    echo '{"response":"error","message":"Missing user registration data"}';
    return;
}
