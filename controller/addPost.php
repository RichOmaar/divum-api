<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['title']) && isset($_POST['foreword']) && isset($_POST['categories']) && isset($_POST['content']) && isset($_POST['url']) && isset($_POST['author'])) {
    $title = $_POST['title'];
    $foreword = $_POST['foreword'];
    $content = $_POST['content'];
    $author = $_POST['author'];
    $url = $_POST['url'];
    $categories = $_POST['categories'];

    if(isset($_FILES['image']['name'])) {
        $image = $_FILES['image']['name'];
        $imageTitle = str_replace(' ', '_', $title);
        $imageTitle = strtolower($imageTitle);
        $imageTitle = preg_replace('/[^A-Za-z0-9\-]/', '-', $imageTitle);
        $imageTitle = $imageTitle.'.'.pathinfo($image, PATHINFO_EXTENSION);

        $imagePath = '../assets/posts/'.$imageTitle;

        if(move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {

            $post = Posts::mdlAddPost($title, $foreword, $content, $imageTitle, $url, $author);

            if(!$post) {
                echo '{"response":"error","message":"Post not added"}';
                return;
            } else {

                $categories = $_POST['categories'];

                $categories2 = explode(',', $categories);

                foreach($categories2 as $category) {
                    $category = Posts::mdlAddPostCategory($post, $category);

                    if(!$category) {
                        echo '{"response":"error","message":"Category not added"}';
                        return;
                    }
                }

                echo '{"response":"success","message":'.json_encode($post).'}';
                return;
            }
        }
    } else {
        echo '{"response":"error","message":"Image error"}';
    }

} else {
    echo '{"response":"error","message":"Post error"}';
    return;
}