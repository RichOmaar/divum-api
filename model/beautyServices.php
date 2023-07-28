<?php

require_once 'connection.php';

class BeautyServices {
    public static function mdlGetServices($blockNumber, $blockSize) {
        $conn = new Connection();
        $db = $conn->get_connection();
    
        // Calculate the OFFSET value based on the block number and size
        $offset = ($blockNumber - 1) * $blockSize;
    
        // Modify the SQL query to include LIMIT and OFFSET
        $sql = "SELECT * FROM beauty_services WHERE status = 1 ORDER BY id_beautyService LIMIT :blockSize OFFSET :offset";
    
        $stmt = $db->prepare($sql);
        $stmt->bindParam(':blockSize', $blockSize, PDO::PARAM_INT);
        $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
    
        $stmt->execute();
    
        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetServiceInfo($slug) {
        $conn = new Connection();
        $db = $conn->get_connection();
    
        $sql = "SELECT * FROM beauty_services WHERE slug = :slug";
    
        $stmt = $db->prepare($sql);
        $stmt->bindParam(':slug', $slug, PDO::PARAM_STR);
    
        $stmt->execute();
    
        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }
    
}