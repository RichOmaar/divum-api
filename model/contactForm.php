<?php

require_once 'connection.php';

class ContactForm
{
    public static function mdlSendContactForm($name, $phone, $email, $message)
    {
        $conn = new Connection();
        $db = $conn->get_connection();
        
        $sql = "INSERT INTO contact_form (name, phone, email, message) VALUES (:name, :phone, :email, :message)";
        
        $stmt = $db->prepare($sql);
        
        $stmt->bindParam(":name", $name);
        $stmt->bindParam(":phone", $phone);
        $stmt->bindParam(":email", $email);
        $stmt->bindParam(":message", $message);
        
        $stmt->execute();
        
        return ($stmt->rowCount() > 0) ? true : false;
    }
}