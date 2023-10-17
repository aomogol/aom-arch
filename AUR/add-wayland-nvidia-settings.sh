#!/bin/bash
#set -e
##################################################################################################################
# Author    :Ahmet Önder Moğol
##################################################################################################################
##################################################################################################################
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################
# https://wiki.hyprland.org/Nvidia/
# https://community.kde.org/Plasma/Wayland/Nvidia
echo "################################################################"
echo "################### Making sure nvidia-dkms is installed or else exit"
echo "################################################################"
# Just checking if nvidia-dkms is installed else stop
if pacman -Qi nvidia-dkms &> /dev/null; then
	tput setaf 2
	echo "################################################################"
	echo "#########  Checking ..."$package" is installed... we can continue"
	echo "################################################################"
	tput sgr0
else
	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  Nvidia-dkms has NOT been installed"
	echo "!!!!!!!!!  Script can not continue"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0
	exit 1
fi

echo
tput setaf 2
echo "################################################################"
echo "################### Adding nvidia modules for Wayland and Nvidia"
echo "################### MODULES= nvidia nvidia_modeset nvidia_uvm nvidia_drm"
echo "################### in /etc/mkinitcpio.conf"
echo "################### and rebuilding /boot files"
echo "################################################################"
tput sgr0
echo

FIND='MODULES=""'
REPLACE='MODULES="nvidia nvidia_modeset nvidia_uvm nvidia_drm"'
sudo sed -i "s/$FIND/$REPLACE/g" /etc/mkinitcpio.conf

sudo mkinitcpio -P

echo
tput setaf 2
echo "################################################################"
echo "################### Adding option nvidia-drm.modeset=1"
echo "################### to the kernel"
echo "################################################################"
tput sgr0
echo

FIND='GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=3 audit=0 nvme_load=yes"'
REPLACE='GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=3 audit=0 nvme_load=yes nvidia-drm.modeset=1"'
sudo sed -i "s/$FIND/$REPLACE/g" /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg

echo
tput setaf 2
echo "################################################################"
echo "################### Removing sddm and installing sddm-git"
echo "################################################################"
tput sgr0
echo

sudo pacman -Rdd --noconfirm sddm
sudo pacman -S --noconfirm sddm-git
echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo