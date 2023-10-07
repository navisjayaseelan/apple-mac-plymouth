#!/bin/bash
# After installation and copying files use this to control the themes.

Text='\033[1;32m'
NC='\033[0m'

if ((${EUID:-0} || "$(id -u)")); then
  clear
  sleep 1
  	echo -e "${NC}Sorry, You are not root"
  sleep 1
  	echo "Please run using sudo command"
  sleep 1
  	echo -e "${Text}Cancelling Installation Command"
  sleep 1
  exit 1
else
  sleep 1
  clear
  	echo "Select Number of Plymouth Theme"
  sleep 1.0
    echo -e "${NC} "
  	update-alternatives --config default.plymouth
  	update-initramfs -u
  sleep 0.5
  	echo "Finish"
  sleep 1.5
  clear
fi
