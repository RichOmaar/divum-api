<?php

require '../model/roulette.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if (isset($_POST['id_option']) && isset($_POST['id_usuario']) && isset($_POST['confirmation_code'])) {
    $id_option = $_POST['id_option'];
    $id_usuario = $_POST['id_usuario'];
    $confirmation_code = $_POST['confirmation_code'];

    $winner = Roulette::mdlAddWinner($id_option, $id_usuario, $confirmation_code);

    if (!$winner) {
        echo '{"response":"error","message":"Winner not added"}';
    } else {

        $deastivateOption = Roulette::mdlDeactivateOption($id_option);

        if (!$deastivateOption) {
            echo '{"response":"error","message":"Option not deactivated"}';
        } else {
            echo '{"response":"success","winner": ' . json_encode($winner) . '}';
        }
    }
} else {
    echo '{"response":"error","message":"No id option or id usuario or confirmation code"}';
}
