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

    public static function mdlGetUserByEmail($email) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT usuario.id_usuario, usuario.nombre, usuario.titulo, usuario.fotoPerfil, usuarios_login.password FROM usuarios_login INNER JOIN usuario ON usuarios_login.id_usuario = usuario.id_usuario WHERE usuarios_login.correo = :email";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":email", $email);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }
}