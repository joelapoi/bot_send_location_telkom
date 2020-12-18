<?php 
require_once 'database/configDB.php';

function viewLokasiUser($no_temp){

    $search_data = "SELECT alamat, latitude, longitude FROM tb_data_lokasi WHERE no_internet = $no_temp";
    $search_data2 = "SELECT alamat, latitude, longitude FROM tb_data_lokasi WHERE no_telepon = $no_temp";
    $resultQueryView = mysqli_query(connDB(), $search_data);
    $resultQueryView2 = mysqli_query(connDB(), $search_data2);

    $message = "";

    if ($resultQueryView->num_rows > 0) {
        while ($viewLokasiUser = mysqli_fetch_assoc($resultQueryView)) {
            $resultLokasiUser = (object) $viewLokasiUser;
            
            $message .= "Alamat   : " . $resultLokasiUser->alamat . PHP_EOL;
            $message .= "\n";
            $message .= "Longitude   : " . $resultLokasiUser->latitude . PHP_EOL;
            $message .= "Latitude   : " . $resultLokasiUser->longitude . PHP_EOL;
            $message .= "\n";
            $message .= "Maps URL   : https://www.google.com/maps/search/" . $resultLokasiUser->latitude . "," . $resultLokasiUser->longitude . PHP_EOL;
            $message .= "\n";

        }
    }
    else if($resultQueryView2->num_rows > 0){
        while ($viewLokasiUser = mysqli_fetch_assoc($resultQueryView2)) {
            $resultLokasiUser = (object) $viewLokasiUser;
            
            $message .= "Alamat   : " . $resultLokasiUser->alamat . PHP_EOL;
            $message .= "\n";
            $message .= "Longitude   : " . $resultLokasiUser->latitude . PHP_EOL;
            $message .= "Latitude   : " . $resultLokasiUser->longitude . PHP_EOL;
            $message .= "\n";
            $message .= "Maps URL   : https://www.google.com/maps/search/" . $resultLokasiUser->latitude . "," . $resultLokasiUser->longitude . PHP_EOL;
            $message .= "\n";

        }
    }
    else{
        $message = "Data Masih Kosong 🙄";
    }

    return $message;
}

?>