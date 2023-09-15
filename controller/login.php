<?php

require '../model/user.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Validate and sanitize email and password inputs here

    // Check if the user with the provided email exists
    $user = User::mdlGetUserByEmail($email);

    if(!$user) {
        echo '{"response":"error","message":"User not found"}';
        return;
    } else {
        // Verify the provided password against the hashed password stored in the database
        $hashedPassword = $user['password'];

        if(password_verify($password, $hashedPassword)) {
            unset($user['password']);
            
            // Passwords match, so the user is authenticated
            echo '{"response":"success","user":'.json_encode($user).'}';
            return;
        } else {
            // Passwords do not match
            echo '{"response":"error","message":"Incorrect password"}';
            return;
        }
    }
} else {
    // Handle the case where email or password is missing
    echo '{"response":"error","message":"Missing login credentials"}';
    return;
}
