<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['url'])) {
    $url = $_POST['url'];

    $post = Posts::mdlGetPost($url);

    if(!$post) {
        echo '{"response":"error","message":"No post found"}';
        return;
    } else {
        echo '{"response":"success","post": '.json_encode($post).'}';
        return;
    }
} else {
    echo '{"response":"error","message":"No id specified"}';
    return;
}