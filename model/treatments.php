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
                $sql = "SELECT * FROM treatments ORDER BY title ASC";
                break;
            case 'desc':
                $sql = "SELECT * FROM treatments ORDER BY title DESC";
                break;
            default:
                $sql = "SELECT * FROM treatments";
                break;
        }

        $stmt = $db->prepare($sql);

        $stmt->execute();
        
        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
}
