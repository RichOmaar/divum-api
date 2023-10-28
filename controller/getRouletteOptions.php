<?php

require '../model/roulette.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$options = Roulette::mdlGetRouletteOptions();

if(!$options) {
    echo '{"response":"error","message":"No options found"}';
    return;
} else {
    echo '{"response":"success","options": '.json_encode($options).'}';
    return;
}