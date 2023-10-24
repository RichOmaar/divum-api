<?php

// use FTP\Connection;

require_once 'connection.php';

class Posts
{
    public static function mdlGetCategories($area)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM categories WHERE area = :area";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":area", $area);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlAddPost($title, $foreword, $content, $image, $url, $author)
    {
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

        return ($stmt->rowCount() > 0) ? $db->lastInsertId() : false;
    }

    public static function mdlAddPostCategory($id_post, $id_category)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "INSERT INTO post_category (id_post, id_category) VALUES (:id_post, :id_category)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_post", $id_post);
        $stmt->bindParam(":id_category", $id_category);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? true : false;
    }

    public static function mdlGetSliderPosts($area)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        // $sql = "SELECT * FROM posts WHERE status = 1 ORDER BY id_post DESC LIMIT 3";
        $sql = "SELECT DISTINCT posts.* FROM posts INNER JOIN post_category ON posts.id_post = post_category.id_post INNER JOIN categories ON post_category.id_category=categories.id_category WHERE categories.area = :area AND posts.status = 1 ORDER BY posts.id_post DESC LIMIT 5";
        $stmt = $db->prepare($sql);

        $stmt->bindParam(":area", $area);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetAllPosts($area)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT DISTINCT posts.* FROM posts INNER JOIN post_category ON posts.id_post = post_category.id_post INNER JOIN categories ON post_category.id_category=categories.id_category WHERE categories.area = :area AND posts.status = 1 ORDER BY posts.id_post DESC";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":area", $area);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetPost($url)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT * FROM posts WHERE url = :url";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":url", $url);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetRandomPosts($area)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql ="SELECT posts.id_post , posts.title , posts.url FROM posts INNER JOIN post_category ON posts.id_post = post_category.id_post INNER JOIN categories ON post_category.id_category = categories.id_category WHERE categories.area = :area ORDER BY RAND() LIMIT 5";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":area", $area);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetPostCategories($id_post)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "SELECT id_category FROM post_category WHERE id_post = :id_post";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_post", $id_post);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlUpdatePost($post_id, $title, $foreword, $content, $url, $author)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        $sql = "UPDATE posts SET title = :title, foreword = :foreword, content = :content, url = :url, author = :author WHERE id_post = :post_id";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":post_id", $post_id);
        $stmt->bindParam(":title", $title);
        $stmt->bindParam(":foreword", $foreword);
        $stmt->bindParam(":content", $content);
        $stmt->bindParam(":url", $url);
        $stmt->bindParam(":author", $author);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? true : false;
    }

    public static function mdlUpdatePostCategory($post_id, $category)
    {
        $conn = new Connection();
        $db = $conn->get_connection();

        // First, delete existing categories for the post
        $sqlDelete = "DELETE FROM post_category WHERE id_post = :post_id";
        $stmtDelete = $db->prepare($sqlDelete);
        $stmtDelete->bindParam(":post_id", $post_id);
        $stmtDelete->execute();

        // Now, insert the new categories
        $categories2 = explode(',', $category);

        foreach ($categories2 as $category) {
            $sqlInsert = "INSERT INTO post_category (id_post, id_category) VALUES (:post_id, :category)";
            $stmtInsert = $db->prepare($sqlInsert);
            $stmtInsert->bindParam(":post_id", $post_id);
            $stmtInsert->bindParam(":category", $category);
            $stmtInsert->execute();
        }

        return true; // Return true assuming the categories were updated successfully.
    }

    public static function mdlAddPostUser($post_id,$idUser) {
        $conn = new Connection();
        $db = $conn->get_connection();
     
        $sql = "INSERT INTO post_usuario(id_usuario, id_post) VALUES ($post_id,$idUser)";

        $stmt = $db->prepare($sql);

        $stmt->bindParam(":id_usuario", $idUser);
        $stmt->bindParam(":post_id", $post_id);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? true : false;
    }
}