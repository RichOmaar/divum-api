<?php

require '../model/treatments.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

if(isset($_POST['treatment'])) {
    $treatment = $_POST['treatment'];
    $treatmentInfo = Treatments::mdlGetTreatmentInfo($treatment);

    if(!$treatmentInfo) {
        echo '{"response":"error","message":"No treatment found"}';
        return;
    } else {
        $benefits = Treatments::mdlGetGenefits($treatmentInfo['id_treatment']);

        if(!$benefits) {
            echo '{"response":"error","message":"No benefits found"}';
            return;
        } else {
            $treatmentInfo['benefits'] = $benefits;

            $allTreatments = Treatments::mdlGetTreatmentsList();

            $treatmentInfo['list'] = $allTreatments;

            if(!$allTreatments) {
                echo '{"response":"error","message":"No list found"}';
                return;
            } else {
                echo '{"response":"success","treatment": '.json_encode($treatmentInfo).'}';
                return;
            }
            

        }
    }
} else {
    echo '{"response":"error","message":"Post error"}';
    return;
}
