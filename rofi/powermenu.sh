#!/bin/bash

OPTIONS="    Logout|    Shutdown|    Reboot"

#option=$(echo -e $OPTIONS | awk '{print $1}' | tr -d '\r\n\t')
res=$(echo $OPTIONS | rofi -font "Source Code Pro bold 24"  -sep "|" -theme powermenu_style -no-fixed-num-lines -dmenu -p 'Power')

if [ "$res" ]
echo "$res"
then
	case $res in
		*Logout)
			i3-msg exit
			;;
		*Shutdown)
			poweroff
			;;
		*Reboot)
			reboot
			;;
	esac
else
	echo -e $OPTIONS
fi

exit 0