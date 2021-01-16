#!/bin/bash
clear
echo
echo
echo
printf "
\e[31m
//////////// \e[1;97mCOLORS\e[0;31m /////////////

\e[0m
\e[31m[\e[97m0\e[31m]\e[97m ────────── \e[32mMANUEL RENK HEX KODU GİR\e[97m

\e[31m[\e[97m1\e[31m]\e[97m ────────── \e[32mBEYAZ\e[97m

\e[31m[\e[97m2\e[31m]\e[97m ────────── \e[32mKIRMIZI\e[97m

\e[31m[\e[97m3\e[31m]\e[97m ────────── \e[32mYEŞİL\e[97m

\e[31m[\e[97m4\e[31m]\e[97m ────────── \e[32mMAVİ\e[97m

\e[31m[\e[97m5\e[31m]\e[97m ────────── \e[32mCAM GÖBEĞİ\e[97m

\e[31m[\e[97m6\e[31m]\e[97m ────────── \e[32mSARI\e[97m

\e[31m[\e[97m7\e[31m]\e[97m ────────── \e[32mTURUNCU\e[97m

\e[31m
////////////////////////////////\e[0m
	
"
echo
echo
echo
read -e -p $'\e[31m───────[ \e[97mSEÇENEK GİRİNİZ\e[31m ]───────►  \e[0m' color
if [[ $color == 1 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#ffffff"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
elif [[ $color == 0 ]];then
	clear
	echo
	echo
	echo
	printf "\e[31m
	///////////// \e[1;97mMANUEL COLOR HEX EDİTÖR\e[31m /////////////\e[97m

	ÖRNEX HEX KODU \e[31m>>\e[97m #d50000\e[0m

	RENKLERİN HEX KODUNU ALABİLMEK İÇİN

	ENTER A BAS

	COLOR HEX KODU ALMA SİTESİNE YÖNLENDİRİLECEKSİN

	BELİRLEYECEĞİN RENGİN ÖRNEKTEKİ GİBİ HEX KODUNU AL

	TERMUXU AÇ VE HEX KODUNU GİR

	"
	echo
	echo
	echo
	read -e -p $'\e[31m───────[ \e[97mENTER\e[31m ]───────►  \e[0m' enter
	am start -a android.intent.action.VIEW "https://htmlcolors.com/color-picker"
	echo
	echo
	echo
	read -e -p $'\e[31m───────[ \e[97mHEX KODUNU GİRİNİZ\e[31m ]───────►  \e[0m' code
	kontrol1=$(echo -e "$code" |wc -m)
	kontrol2=$(echo -e "$code" |grep -o \#)
	if [[ $kontrol1 == 8 ]];then
		if [[ $kontrol2 != \# ]];then
			echo
		        echo
			echo
			printf "\e[31m[!]\e[97m HATALI HEX KODU \e[31m!!!\e[0m"
			echo
			echo
			echo
			exit
		fi

	else
		echo
		echo
		echo
		printf "\e[31m[!]\e[97m HATALI HEX KODU \e[31m!!!\e[0m"
		echo
		echo
		echo
		exit
	fi

	eski=$(sed -n 3p colors.properties)
	yeni="foreground=$code"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
elif [[ $color == 2 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#d50000"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
elif [[ $color == 3 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#4caf50"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
elif [[ $color == 4 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#4fc3f7"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
elif [[ $color == 5 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#00FFFF"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
elif [[ $color == 6 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#FFD700"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
elif [[ $color == 7 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#FF8C00"
	sed -ie "s/$eski/$yeni/g" colors.properties
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	if [[ -a colors.propertiese ]];then
		rm colors.propertiese
	fi
	exit
else
	echo
	echo
	echo
	printf "\e[31m[!]\e[97m HATALI SEÇİM \e[31m!!!\e[0m"
	echo
	echo
	echo
	sleep 1
	bash colors.sh
fi

