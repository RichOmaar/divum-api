<?php

require_once 'connection.php';

class Roulette
{
    public static function mdlGetRouletteOptions() {
        $conn = new Connection();
        $db = $conn->get_connection();

        // $sql = "SELECT * FROM roulette_options WHERE status = 1";
        $sql = "SELECT * FROM roulette_options";

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlValidateOptionStatus($id_option) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT status FROM roulette_options WHERE id_option = :id_option";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_option", $id_option);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlAddWinner($id_option, $id_usuario, $confirmation_code) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "INSERT INTO roulette_user (id_option, id_usuario, confirmation_code) VALUES (:id_option, :id_usuario, :confirmation_code)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_option", $id_option);
        $stmt->bindParam(":id_usuario", $id_usuario);
        $stmt->bindParam(":confirmation_code", $confirmation_code);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? true : false;        
    }

    public static function mdlDeactivateOption($id_option) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "UPDATE roulette_options SET status = 0 WHERE id_option = :id_option";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_option", $id_option);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? true : false;
    }

    public static function mdlVerifyUserWinner($id_usuario) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM roulette_user WHERE id_usuario = :id_usuario";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_usuario", $id_usuario);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }
}