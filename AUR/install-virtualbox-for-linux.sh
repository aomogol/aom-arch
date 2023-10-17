#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################

echo "###########################################################################"
echo "##      This script assumes you have the linux kernel running        ##"
echo "###########################################################################"


if pacman -Qi linux &> /dev/null; then

	tput setaf 2
	echo "################################################################"
	echo "#########  Installing linux-headers"
	echo "################################################################"
	tput sgr0

	sudo pacman -S --noconfirm --needed linux-headers
fi

sudo pacman -S --noconfirm --needed virtualbox
sudo pacman -S --needed --noconfirm virtualbox-host-dkms

echo "###########################################################################"
echo "##      Removing all the messages virtualbox produces         ##"
echo "###########################################################################"
VBoxManage setextradata global GUI/SuppressMessages "all"

# resolution issues Jan/2023
# VBoxManage setextradata "Your Virtual Machine Name" "VBoxInternal2/EfiGraphicsResolution" "2560x1440"
# VBoxManage setextradata "Your Virtual Machine Name" "VBoxInternal2/EfiGraphicsResolution" "1920x1080"
# graphical driver - VMSVGA !
# see : https://wiki.archlinux.org/title/VirtualBox#Set_guest_starting_resolution

echo "###########################################################################"
echo "#########               You have to reboot.                       #########"
echo "###########################################################################"
