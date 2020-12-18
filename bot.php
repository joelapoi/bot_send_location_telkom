<?php

use BotMan\BotMan\BotMan;
use BotMan\BotMan\BotManFactory;
use BotMan\BotMan\Drivers\DriverManager;
use BotMan\Drivers\Telegram\TelegramDriver;
use BotMan\BotMan\Messages\Attachments\Image;
use BotMan\BotMan\Messages\Attachments\Video;
use BotMan\BotMan\Messages\Outgoing\OutgoingMessage;

require_once 'vendor/autoload.php';
require_once 'database/configDB.php';

$configs = [
    "telegram" => [
        "token" => file_get_contents("private/token.txt")
    ]
];

DriverManager::loadDriver(TelegramDriver::class);

$botman = BotManFactory::create($configs); 

// Command no @ to bot
$botman->hears("/start", function (BotMan $bot) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();
    $id = $user->getId();
    include "command/requestChat.php";
    $bot->reply("Assalamualaikum $firstname (ID:$id_user),\nSelamat Datang Di Layanan Cek Lokasi.\n\nKetikkan Perintah /help Untuk Mengetahui Menu Perintah Yang Bisa Saya Kerjakan");

});

$botman->hears("/help", function (Botman $bot) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();

    include "command/requestChat.php";

    $bot->reply("/lihat_lokasi \n*Untuk Melihat Lokasi sesuai data \n\n /register {nama}_{kontak} \n*Untuk mendaftar");
});

$botman->hears("/lihat_lokasi", function (BotMan $bot) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();
    
    include "command/requestChatLokasi.php";
    $bot->reply("Format Lihat Tiket :\n\n/lokasi [No.Internet atau No.Telepon]\n\n*Tanpa Tanda Kurung []");
});

$botman->hears("/lokasi {no_temp}", function (Botman $bot, $no_temp) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();
    
    $no_temp = $no_temp;
    include "command/requestChat.php";
    include "command/viewLokasiUser.php";

    $message = viewLokasiUser($no_temp);
    $bot->reply($message);
});

$botman->hears("/register {nama}_{kontak}", function (Botman $bot, $nama, $kontak) {
    $user = $bot->getUser();
    $id_user = $user->getId();
    
    $nama = $nama;
    $kontak = $kontak;
    
    include "command/cekRegister.php";
    include "command/registerUser.php";

    $message = registerUser($nama, $kontak);
    $bot->reply($message);

});



// ------------------------------------------------------------pembatas---------------------------------------------------------- 
// Command with @ to bot
$botman->hears("/start@TelkomSendLocationbot", function (BotMan $bot) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();

    $id = $user->getId();

    $bot->reply("Assalamualaikum $firstname (ID:$id_user),\nSelamat Datang Di Layanan Cek Lokasi.\n\nKetikkan Perintah /help Untuk Mengetahui Menu Perintah Yang Bisa Saya Kerjakan");
    include "command/requestChat.php";
});

$botman->hears("/help@TelkomSendLocationbot", function (Botman $bot) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();

    include "command/requestChat.php";

    $bot->reply("/lihat_lokasi@TelkomSendLocationbot \n*Untuk Melihat Lokasi sesuai data");
});


$botman->hears("/lihat_lokasi@TelkomSendLocationbot", function (BotMan $bot) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();
    
    include "command/requestChat.php";
    $bot->reply("Format Lihat Tiket :\n\n/lokasi@TelkomSendLocationbot [No.Internet]_[No.Telepon]\n\n*Tanpa Tanda Kurung []");
});

$botman->hears("/lokasi@TelkomSendLocationbot {no_internet}_{no_telepon}", function (Botman $bot, $no_internet, $no_telepon) {
    $user = $bot->getUser();
    $firstname = $user->getFirstName();
    $id_user = $user->getId();
    
    $no_internet = $no_internet;
    $no_telepon = $no_telepon;
    
    include "command/requestChat.php";
    include "command/viewLokasiUser.php";

    $message = viewLokasiUser($no_internet, $no_telepon);
    $bot->reply($message);
});


// command not found
$botman->fallback(function (BotMan $bot) {
    $message = $bot->getMessage()->getText();
    $bot->reply("Maaf, Perintah Ini '$message' Tidak Ada ");
});


$botman->listen();