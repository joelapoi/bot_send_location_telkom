<?php

namespace ChatTele;

require_once 'database/configDB.php';

date_default_timezone_set('Asia/Jakarta');

function checkDataUser($id_user)
{
    $querySelectData    = "SELECT * FROM tb_datauser WHERE id_user = $id_user LIMIT 1";
    $resultQuery        = mysqli_query(connDB(), $querySelectData);

    return (object) mysqli_fetch_assoc($resultQuery);
}

function checkAksesUser($id_user)
{
    $querySelectDataAkses    = "SELECT * FROM tb_datauser WHERE id_user = $id_user AND akses = 'Ya'";
    $resultQueryAkses        = mysqli_query(connDB(), $querySelectDataAkses);

    return (object) mysqli_fetch_assoc($resultQueryAkses);
}

function getDataUser($user)
{
    $data   = [
        "id_user"           =>     $user->getId(),
        "nama"              =>     $user->getFirstName()
    ];

    return (object) $data;
}
