<?php

require_once 'connection.php';

class User {
    public static function mdlAddUser($nombre, $titulo, $descripcionPersonal) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "INSERT INTO usuario (nombre, titulo, descripcionPersonal) VALUES (:nombre, :titulo, :descripcionPersonal)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":nombre", $nombre);
        $stmt->bindParam(":titulo", $titulo);
        $stmt->bindParam(":descripcionPersonal", $descripcionPersonal);

        $stmt->execute();

        $id = $db->lastInsertId();

        return $id;
    }

    public static function mdlAddUserLogin($idUsuario,$email,$password) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "INSERT INTO usuarios_login (id_usuario, correo, password) VALUES (:id_usuario, :correo, :password)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_usuario", $idUsuario);
        $stmt->bindParam(":correo", $email);
        $stmt->bindParam(":password", $password);

        $stmt->execute();

        $id = $db->lastInsertId();

        return $id;
    }
}