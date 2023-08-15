<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['area'])) {
    $area = $_POST['area'];

    $categories = Posts::mdlGetCategories($area);
    
    if(!$categories) {
        echo '{"response":"error","message":"No categories found"}';
        return;
    } else {
        echo '{"response":"success","categories": '.json_encode($categories).'}';
        return;
    }
} else {
    echo '{"response":"error","message":"No area specified"}';
    return;
}
