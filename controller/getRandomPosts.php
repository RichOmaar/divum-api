<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$posts = Posts::mdlGetRandomPosts();

if(!$posts) {
    echo '{"response":"error","message":"No posts found"}';
    return;
} else {
    echo '{"response":"success","posts": '.json_encode($posts).'}';
    return;
}