<?php

require_once 'connection.php';

class ContactForm
{
    public static function mdlSendContactForm($name, $phone, $message)
    {
        $conn = new Connection();
        $db = $conn->get_connection();
        
        $sql = "INSERT INTO contact_form (name, phone, message) VALUES (:name, :phone, :message)";
        
        $stmt = $db->prepare($sql);
        
        $stmt->bindParam(":name", $name);
        $stmt->bindParam(":phone", $phone);
        $stmt->bindParam(":message", $message);
        
        $stmt->execute();
        
        return ($stmt->rowCount() > 0) ? true : false;
    }
}