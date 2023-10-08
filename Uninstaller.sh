#!/bin/bash

# ---------------[ Apple Mac Plymouth Uninstallation ]--------------
# -------------------------[version 1]------------------------
# ------------[ Created by Navis Michael Bearly ]------------
# ------------------[ michael.bearly@gmail.com ]------------------

Text='\033[1;32m'
NC='\033[0m'

if ((${EUID:-0} || "$(id -u)")); then
  clear
  sleep 1.5
  	echo -e "${NC}Sorry, You are not root"
  sleep 1.0
  	echo "Please run using sudo command"
  sleep 1.0
  	echo -e "${Text}Cancelling Uninstallation Command"
  sleep 1.5
  exit 1
else
  clear
  sleep 1.5
  	echo -e "${Text}Please Wait Until Uninstallation Complete"
  sleep 1.5

  # Remove the copied files
  echo -e "${NC}Removing Apple Mac Plymouth files"
  rm -rf /usr/share/plymouth/themes/apple-mac-plymouth

  # Remove the alternative configuration
  echo -e "${Text}Removing Plymouth theme configuration"
  update-alternatives --remove default.plymouth /usr/share/plymouth/themes/apple-mac-plymouth/apple-mac-plymouth.plymouth

  echo -e "${Text}Apple Mac Plymouth Uninstallation Complete"
  sleep 1.5
  clear
fi
