<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['option'])) {
    $option = $_POST['option'];

    switch ($option) {
        case 'all':
            $posts = Posts::mdlGetAllPosts();
            break;
        case 'slider':
            $posts = Posts::mdlGetSliderPosts();
            break;
        default:
            echo '{"response":"error","message":"No option specified"}';
            return;
            break;
    }

    if(!$posts) {
        echo '{"response":"error","message":"No posts found"}';
        return;
    } else {
        echo '{"response":"success","posts": '.json_encode($posts).'}';
        return;
    }

} else {
    echo '{"response":"error","message":"No order specified"}';
    return;
}