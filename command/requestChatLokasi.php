<?php
require_once 'command/chat.php';
    
$user = $bot->getUser();
$id_user = $user->getId();
$message = "";

// check new data user apakah sebelumnya sudah terdaftar
$dataDB	= ChatTele\checkDataUser($id_user);

// check new data user apakah sebelumnya memiliki akses
$dataDBakses	= ChatTele\checkAksesUser($id_user);

// ambil data default user
$dataUser = ChatTele\getDataUser($user);

// jika data user belum ada, maka diinsert baru
if (!(array) $dataDBakses) {
    die('maaf anda tidak memiliki akses');
}
?>