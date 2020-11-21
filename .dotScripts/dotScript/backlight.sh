#!/usr/bin/env bash
now=$(</sys/class/backlight/nvidia_0/brightness)
if [ $1 == '+' ]
then	
	if [ $now -ge 100 ]
	then
		echo hi... its 100%
	else
		let now=now+5;
	fi
elif [ $1 == '-' ]
then
	if [ $now -gt 20 ]
	then
		let now=now-5;
		else
		echo backlight is near to be complete black.
	fi
else
	echo use +,- for increse/decrease bachlight.
fi
export $now
echo asdf | sudo -S sh -c "echo $now >/sys/class/backlight/nvidia_0/brightness" 



