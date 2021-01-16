#!/data/data/com.termux/files/usr/bin/bash
clear
DIR=`cd $(dirname $0) && pwd`
FONTS_DIR=$DIR/fonts
count=0
echo
echo
echo
printf "
\e[31m//////////// \e[1;97mFONTS\e[0;31m /////////////\e[97m"
echo
echo
echo
for font in $FONTS_DIR/*/{*.ttf,*.otf}; do
	font_file[count]=$font;
	echo -e "
	[$count] $( echo ${font_file[count]} | awk -F'/' '{print $NF}' )";
	count=$(( $count + 1));
done;
count=$(( $count - 1 ));

while true; do
	echo
	echo
	echo
	#read -e -p $'SEÇENEK GİRİNİZ \e[31m>>\e[0m ' number;
	read -e -p $'\e[31m───────[ \e[97mSEÇENEK GİRİNİZ\e[31m ]───────►  \e[0m' number
	echo
	echo
	echo
	if [[ -z "$number" ]]; then
		break;
	elif ! [[ $number =~ ^[0-9]+$ ]]; then
		echo
		echo
		echo
		printf "\e[31m[!]\e[97m HATALI SEÇİM \e[31m!!!\e[0m";
		echo
		echo
		echo
	elif (( $number >= 0 && $number <= $count )); then
		cp -fr "${font_file[number]}" "$DIR/font.ttf";
		break;
	else
		echo
		echo
		echo
		printf "\e[31m[!]\e[97m HATALI SEÇİM \e[31m!!!\e[0m";
		echo
		echo
		echo
	fi
done;
termux-reload-settings
echo
echo
echo
printf "\e[32m[✓]\e[97m İŞLEM TAMAMLANDI"
echo
echo
echo
