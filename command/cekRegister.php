<?php
require_once 'command/chat.php';
    
$user = $bot->getUser();
$id_user = $user->getId();
$message = "";

// check new data user apakah sebelumnya sudah terdaftar
$dataDB	= ChatTele\checkDataUser($id_user);

// jika data user belum ada, maka diinsert baru
if (!(array) $dataDB) {
    
}
else {
	$message = "Akun anda sudah ada";
}

return $message;
?>
