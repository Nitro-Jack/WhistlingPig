#!/bin/bash

## Variable Declaration
CPU=$(grep "model name" /proc/cpuinfo | head -1 | awk -F: '{print $2}' | xargs)
KERNEL=$(awk '{print $3}' /proc/version)
OS=$(grep "PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')


## Echoing out
echo -e "Hi buddy, I'm inside your system.\nDon't Believe Me?"
echo -e "Well you have a $CPU, and you're running a current version of $OS, specifically $KERNEL"
echo -e "So you think you're hot shit??? Fuck outta here"


konsole --background-mode
## Was experimenting with using konsole, had to change plans on how i want this demo to work
