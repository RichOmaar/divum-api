<?php

require '../model/posts.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$categories = Posts::mdlGetCategories();

if(!$categories) {
    echo '{"response":"error","message":"No categories found"}';
    return;
} else {
    echo '{"response":"success","categories": '.json_encode($categories).'}';
    return;
}