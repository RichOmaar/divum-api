<?php

require_once 'connection.php';

class Posts {
    public static function mdlGetCategories() {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM categories";

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlAddPost($title, $foreword, $content, $image, $author) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "INSERT INTO posts (title, foreword, content, image, author) VALUES (:title, :foreword, :content, :image, :author)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":title", $title);
        $stmt->bindParam(":foreword", $foreword);
        $stmt->bindParam(":content", $content);
        $stmt->bindParam(":image", $image);
        $stmt->bindParam(":author", $author);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $db -> lastInsertId() : false;
    }

    public static function mdlAddPostCategory($id_post, $id_category) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "INSERT INTO post_category (id_post, id_category) VALUES (:id_post, :id_category)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_post", $id_post);
        $stmt->bindParam(":id_category", $id_category);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? true : false;
    }
}