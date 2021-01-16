#!/bin/bash
clear
if [[ $1 == güncelle ]];then
	cd files
	bash güncelleme.sh güncelle
	exit
fi
cd files
#bash güncelleme.sh
bash banner.sh
cd ..
printf "
\e[31m[\e[97m1\e[31m]\e[97m ────────── \e[32mCOLORS\e[97m

\e[31m[\e[97m2\e[31m]\e[97m ────────── \e[32mFONTS\e[97m

\e[31m[\e[97m3\e[31m]\e[97m ────────── \e[32mBANNERS\e[97m

\e[31m[\e[97m4\e[31m]\e[97m ────────── \e[32mOTOMATİK ÖZELLEŞTİR\e[97m

\e[31m[\e[97mX\e[31m]\e[97m ────────── \e[31mÇIKIŞ\e[97m

"
echo
echo
echo
read -e -p $'\e[31m───────[ \e[97mSEÇENEK GİRİNİZ\e[31m ]───────►  \e[0m' secim
if [[ $secim == 1 ]];then
	bash colors.sh
	exit
elif [[ $secim == 2 ]];then
	bash fonts.sh
	exit
elif [[ $secim == 3 ]];then
	bash banners.sh
fi

