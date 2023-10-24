<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['area'])) {
    $area = $_POST['area'];
    
    $posts = Posts::mdlGetRandomPosts($area);
    
    if(!$posts) {
        echo '{"response":"error","message":"No posts found"}';
        return;
    } else {
        echo '{"response":"success","posts": '.json_encode($posts).'}';
        return;
    }
} else {
    echo '{"response":"error","message":"No area specified"}';
    return;
}
