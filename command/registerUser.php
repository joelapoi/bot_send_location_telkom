<?php 
require_once 'database/configDB.php';

$user = $bot->getUser();
$id_user = $user->getId();

function registerUser($nama, $kontak){

    $queryInsertUser = "INSERT INTO tb_datauser (id_user, nama, kontak, akses)
                         VALUES ('$user->id_user','$nama', '$kontak', 'Tidak')";
    $resultQueryInsert  = mysqli_query(connDB(), $queryInsertUser);

    if ($resultQueryInsert) {
    	$message = "Register berhasil mohon untuk verifikasi akun kepada Admin 😉";
    }
    else{
    	$message = "Register Gagal, Cek Kembali 😱";
    }
    
    return $message;
}

?>