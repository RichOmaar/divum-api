<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if (isset($_POST['option']) && isset($_POST['area'])) {
    $option = $_POST['option'];
    $area = $_POST['area'];

    switch ($option) {
        case 'all':
            $posts = Posts::mdlGetAllPosts($area);
            break;
        case 'slider':
            $posts = Posts::mdlGetSliderPosts($area);
            break;
        default:
            echo '{"response":"error","message":"No option specified"}';
            return;
            break;
    }

    if (!$posts) {
        echo '{"response":"error","message":"No posts found"}';
        return;
    } else {
        echo '{"response":"success","posts": ' . json_encode($posts) . '}';
        return;
    }
} else {
    echo '{"response":"error","message":"No order specified"}';
    return;
}
