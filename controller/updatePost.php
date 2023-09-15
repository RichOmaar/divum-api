<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['post_id']) && isset($_POST['title']) && isset($_POST['foreword']) && isset($_POST['content']) && isset($_POST['url']) && isset($_POST['author'])) {
    $post_id = $_POST['post_id'];
    $title = $_POST['title'];
    $foreword = $_POST['foreword'];
    $content = $_POST['content'];
    $author = $_POST['author'];
    $url = $_POST['url'];

    // Check if an image file has been uploaded
    $image = null;
    $imageTitle = null;
    $imagePath = null;

    if(isset($_FILES['image']['name'])) {
        $image = $_FILES['image']['name'];
        $imageTitle = str_replace(' ', '_', $title);
        $imageTitle = strtolower($imageTitle);
        $imageTitle = preg_replace('/[^A-Za-z0-9\-]/', '-', $imageTitle);
        $imageTitle = $imageTitle.'.'.pathinfo($image, PATHINFO_EXTENSION);

        $imagePath = '../assets/posts/'.$imageTitle;

        if(!move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
            echo '{"response":"error","message":"Failed to upload image"}';
            return;
        }
    }

    // Update the post with the provided post_id, and include the image only if it was uploaded
    $post = Posts::mdlUpdatePost($post_id, $title, $foreword, $content, $imageTitle, $url, $author);

    if(!$post) {
        echo '{"response":"error","message":"Post not updated"}';
        return;
    } else {
        // $categories = $_POST['categories'];

        // $categories2 = explode(',', $categories);

        // // Update post categories if needed
        // foreach($categories2 as $category) {
        //     $category = Posts::mdlUpdatePostCategory($post_id, $category);

        //     if(!$category) {
        //         echo '{"response":"error","message":"Category not updated"}';
        //         return;
        //     }
        // }

        echo '{"response":"success","message":'.json_encode($post).'}';
        return;
    }
} else {
    echo '{"response":"error","message":"Post error"}';
    return;
}
