<?php

require_once 'connection.php';

class Treatments
{
    public static function mdlGetTreatments($order)
    {
        $conn = new Connection();
        $db = $conn->get_connection();
        
        switch ($order) {
            case 'asc':
                $sql = "SELECT * FROM treatments WHERE status = 1 ORDER BY title ASC";
                break;
            case 'desc':
                $sql = "SELECT * FROM treatments WHERE status = 1 ORDER BY title DESC";
                break;
            default:
                $sql = "SELECT * FROM treatments WHERE status = 1";
                break;
        }

        $stmt = $db->prepare($sql);

        $stmt->execute();
        
        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
    
    public static function mdlGetTreatmentsList()
    {
        $conn = new Connection();
        $db = $conn->get_connection();
        
        $sql = "SELECT id_treatment, title, link FROM treatments";

        $stmt = $db->prepare($sql);

        $stmt->execute();
        
        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetGenefits($id_treatment) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM benefits WHERE id_treatment = :id_treatment";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_treatment", $id_treatment);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetTreatmentInfo($treatment) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM treatments WHERE link = :treatment";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":treatment", $treatment);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }
}
