#!/bin/bash
clear
echo
echo
echo
printf "
\e[31m
//////////// \e[1;97mBANNERS\e[0;31m /////////////

\e[0m
\e[31m[\e[97m1\e[31m]\e[97m ────────── \e[32mNEOFETCH\e[97m

\e[31m[\e[97m2\e[31m]\e[97m ────────── \e[32mSKULL 1\e[97m

\e[31m[\e[97m3\e[31m]\e[97m ────────── \e[32mSKULL 2\e[97m

\e[31m[\e[97m4\e[31m]\e[97m ────────── \e[32mSKULL EYES \e[97m

\e[31m[\e[97m5\e[31m]\e[97m ────────── \e[32mEYES\e[97m

\e[31m[\e[97m6\e[31m]\e[97m ────────── \e[32mDRAGON\e[97m

\e[31m[\e[97m7\e[31m]\e[97m ────────── \e[32mMONSTER\e[97m

\e[31m[\e[97m8\e[31m]\e[97m ────────── \e[32mALİEN\e[97m

\e[31m[\e[97m9\e[31m]\e[97m ────────── \e[32mSNAKE\e[97m


\e[31m
////////////////////////////////\e[0m
	
"
echo
echo
echo
read -e -p $'\e[31m───────[ \e[97mSEÇENEK GİRİNİZ\e[31m ]───────►  \e[0m' banners
if [[ $banners == 1 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 10 ]];then
		sed -ie "s/#neofetch/neofetch/g" $HOME/.zshrc
		sed -ie "s/cowsay/#cowsay/g" $HOME/.zshrc
	else
		cd $konum
		zsh
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
	cd $konun
	zsh
elif [[ $banners == 2 ]];then
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
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
elif [[ $banners == 3 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != kurukafa2 ]];then
			sed -ie "s/$kontrol/kurukafa2/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != kurukafa2 ]];then
			sed -ie "s/$kontrol/kurukafa2/g" $HOME/.zshrc
		fi
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
elif [[ $banners == 4 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != eyes2 ]];then
			sed -ie "s/$kontrol/eyes2/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != eyes2 ]];then
			sed -ie "s/$kontrol/eyes2/g" $HOME/.zshrc
		fi
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
elif [[ $banners == 5 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != eyes ]];then
			sed -ie "s/$kontrol/eyes/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != eyes ]];then
			sed -ie "s/$kontrol/eyes/g" $HOME/.zshrc
		fi
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
elif [[ $banners == 6 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != ejderha ]];then
			sed -ie "s/$kontrol/ejderha/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != ejderha ]];then
			sed -ie "s/$kontrol/ejderha/g" $HOME/.zshrc
		fi
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
elif [[ $banners == 7 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != monster ]];then
			sed -ie "s/$kontrol/monster/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != monster ]];then
			sed -ie "s/$kontrol/monster/g" $HOME/.zshrc
		fi
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
elif [[ $banners == 8 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != uzayli ]];then
			sed -ie "s/$kontrol/uzayli/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != uzayli ]];then
			sed -ie "s/$kontrol/uzayli/g" $HOME/.zshrc
		fi
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
elif [[ $banners == 9 ]];then
	kontrol=$(sed -n 2p $HOME/.zshrc |wc -m)
	if [[ $kontrol == 9 ]];then
		sed -ie "s/neofetch/#neofetch/g" $HOME/.zshrc
		sed -ie "s/#cowsay/cowsay/g" $HOME/.zshrc
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != yilan ]];then
			sed -ie "s/$kontrol/yilan/g" $HOME/.zshrc
		fi
	elif [[ $kontrol == 10 ]];then
		kontrol=$(sed -n 3p $HOME/.zshrc |awk '{printf $3}')
		if [[ $kontrol != yilan ]];then
			sed -ie "s/$kontrol/yilan/g" $HOME/.zshrc
		fi
	else
		cd $konum
		zsh
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
	cd $konum
	zsh
else
	echo
	echo
	echo
	printf "\e[31m[!]\e[97m HATALI SEÇİM"
	echo
	echo
	echo
	sleep 1
	bash banners.sh
fi
