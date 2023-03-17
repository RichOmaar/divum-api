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

    public static function mdlAddPost($title, $foreword, $content, $image, $url, $author) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "INSERT INTO posts (title, foreword, content, image, url, author) VALUES (:title, :foreword, :content, :image, :url, :author)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":title", $title);
        $stmt->bindParam(":foreword", $foreword);
        $stmt->bindParam(":content", $content);
        $stmt->bindParam(":image", $image);
        $stmt->bindParam(":url", $url);
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

    public static function mdlGetSliderPosts() {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM posts WHERE status = 1 ORDER BY id_post DESC LIMIT 3";

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
    
    public static function mdlGetAllPosts() {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM posts WHERE status = 1 ORDER BY id_post DESC";

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetPost($url) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM posts WHERE url = :url";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":url", $url);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetRandomPosts() {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT posts.id_post, posts.title, posts.url FROM posts ORDER BY RAND() LIMIT 10";

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetPostCategories($id_post) {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT id_category FROM post_category WHERE id_post = :id_post";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_post", $id_post);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }
}