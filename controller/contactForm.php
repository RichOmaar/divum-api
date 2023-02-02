<?php

require '../model/contactForm.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['name']) && isset($_POST['phone']) && isset($_POST['message'])) {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $message = $_POST['message'];

    $send = ContactForm::mdlSendContactForm($name, $phone, $message);

    if(!$send) {
        echo '{"response":"error","message":"Error sending message"}';
        return;
    } else {
        echo '{"response":"success","message":"Message sent"}';
        return;
    }
} else {
    echo '{"response":"error","message":"Post error"}';
    return;
}