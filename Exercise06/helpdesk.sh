#!/bin/bash
pinghost ()
{
echo Enter hostname or adress to ping:
read TOPING
ping -c 4 $TOPING
}

TRAPMSG="echo Not allowed!"

trap $TRAPMSG INT
trap $TRAPMSG TSTP
clear
echo Available tasks:
select TASK in "Reset password" "Show disk usage" "Ping a host" "Log out"
do
	case $REPLY in 
		1) TASK="echo passwd";;
		2) TASK="df -h";;
		3) TASK=pinghost;;
		4) TASK=break;;
		*) echo Incorrect input;;
	esac
	clear
	$TASK
done
echo "logout"
