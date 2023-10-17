#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################
if 	lsblk -f | grep btrfs > /dev/null 2>&1 ; then
	echo "################################################################"
	echo "################### Btrfs"
	echo "################################################################"
	echo "################################################################"
	echo "################### Snapper to be installed"
	echo "################################################################"
	echo "You are using BTRFS. Installing the software ..."
	echo
	sudo pacman -S --needed --noconfirm snapper
	sudo pacman -S --needed --noconfirm grub-btrfs
	sudo pacman -S --needed --noconfirm btrfs-assistant
	sudo pacman -S --needed --noconfirm snap-pac
	sudo pacman -S --needed --noconfirm snapper-support
	echo "################################################################"
	echo "################### Snapper installed"
	echo "################################################################"
else
	echo "################################################################"
	echo "### Your harddisk/ssd/nvme is not formatted as BTRFS."
	echo "### Packages will not be installed."
	echo "################################################################"
fi
