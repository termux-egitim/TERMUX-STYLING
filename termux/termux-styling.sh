#!/bin/bash
clear
if [[ $1 == güncelle ]];then
	cd files
	bash güncelleme.sh güncelle
	exit
fi
if [[ $1 == --toolkaldir ]];then
	cd files
	mv motd /data/data/com.termux/files/usr/etc/motd
	sed -ie "s/zsh//g" /data/data/com.termux/files/usr/etc/bash.bashrc
	rm /data/data/com.termux/files/usr/etc/bash.bashrce
	cd $HOME
	rm .zshrc
	rm -rf .termux
	rm $PREFIX/bin/termux-styling
	termux-reload-settings
	echo
	echo
	echo
	printf "\e[32m[✓]\e[97m TOOL KALDIRILDI"
	echo
	echo
	echo
	exit
fi
cd files
bash güncelleme.sh
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
elif [[ $secim == 4 ]];then
	eski=$(sed -n 3p colors.properties)
	yeni="foreground=#ffffff"
	sed -ie "s/$eski/$yeni/g" colors.properties
	cp fonts/UbuntuMono/'Ubuntu Mono derivative Powerline.ttf' font.ttf
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != kurukafa ]];then
			sed -ie "s/$kontrol/kurukafa/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != kurukafa ]];then
			sed -ie "s/$kontrol/kurukafa/g" $HOME/.zshrc
		fi
	fi
	if [[ -a $HOME/.zshrce ]];then
		rm $HOME/.zshrce
	fi
	echo
	echo
	echo
	printf "\e[32m[✓]\e[0m İŞLEM TAMAMLANDI "
	echo
	echo
	echo
	sleep 1
	termux-reload-settings
	cd $HOME
	zsh
elif [[ $secim == x || $secim == X ]];then
	echo
	echo
	echo
	printf "\e[31m[!]\e[0m ÇIKIŞ YAPILDI "
	echo
	echo
	echo
	exit
else
	echo
	echo
	echo
	printf "\e[31m[!]\e[0m HATALI SEÇİM"
	echo
	echo
	echo
	sleep 1
	bash termux-styling.sh

fi

