#!/bin/bash
clear
if [[ $1 == güncelle ]];then
	rm README.md
	mv .git termux
	cd termux/files
	bash güncelleme.sh güncelle
	cd ..
	cp README.md ..
	mv .git ..
	exit
fi
kontrol=$(which figlet |wc -l)
if [[ $kontrol == 1 ]];then
	cp termux/files/figlet-fonts/* $PREFIX/share/figlet
	chmod 777 $PREFIX/share/figlet/*
	rm -rf termux/files/figlet-fonts
fi
mv termux/files/scripts/* $PREFIX/bin
rm -rf termux/files/scripts/
mv termux/termux-styling $PREFIX/bin
chmod 777 $PREFIX/bin/*
mv .git termux
if [[ -a /data/data/com.termux/files/home/.termux ]];then
	mv $HOME/.termux $HOME/.termux2
	mv termux $HOME/.termux
else
	mv termux $HOME/.termux
fi
echo
echo
echo
printf "

\e[33mKURULUM İÇİN PAKETLER YÜKLENİYOR..


LÜTFEN BEKLEYİNİZ..\e[97m

"
sleep 1
echo
echo
echo
sleep 2
if [[ -a /data/data/com.termux/files/usr/bin/fish ]];then
	echo
else
	pkg install fish -y
fi
if [[ -a /data/data/com.termux/files/usr/bin/zsh ]];then
	echo
else
	pkg install zsh -y
fi
if [[ -a /data/data/com.termux/files/usr/bin/neofetch ]];then
	echo
else
	pkg install neofetch -y
fi
if [[ -a /data/data/com.termux/files/usr/bin/cowsay ]];then
	echo
else
	pkg install cowsay -y

fi
if [[ -a /data/data/com.termux/files/usr/bin/lolcat ]];then
	echo
else
	pkg install ruby -y
	gem install lolcat
fi
if [[ -a /data/data/com.termux/files/usr/bin/ruby ]];then
	echo
else
	pkg install ruby -y
fi
echo
echo
echo
printf "\e[32m[✓]\e[0m KURULUM TAMAMLANDI "
echo
echo
echo
sleep 2
konum=$(pwd)
file_name=$(basename $konum)
cd ..
rm -rf $file_name
mv $HOME/.termux/files/cowsays/* /data/data/com.termux/files/usr/share/cows
chmod 777 /data/data/com.termux/files/usr/share/cows/*
mv $HOME/.termux/files/.zshrc $HOME
rm -rf $HOME/.termux/files/cowsays
if [[ -a /data/data/com.termux/files/usr/etc/motd ]];then
	rm /data/data/com.termux/files/usr/etc/motd
fi
echo -e "zsh" >> /data/data/com.termux/files/usr/etc/bash.bashrc
termux-reload-settings
echo
echo
echo
echo
printf "\e[32m
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[97m

	KISAYOL OLUŞTURULDU

	   \e[33mtermux-styling \e[97m
\e[32m
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[97m"
sleep 5
echo
echo
echo
zsh
