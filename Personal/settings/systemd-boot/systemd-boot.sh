#!/bin/bash
#set -e
##################################################################################################################
# Author 	: 
##################################################################################################################
#https://peterconfidential.com/grub-to-systemd-boot/
#https://bbs.archlinux.org/viewtopic.php?id=223909

echo
tput setaf 2
echo "################################################################"
echo "################### Search for keys"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed systemd-boot-pacman-hook

sudo bootctl install

sudo pacman -Rcnsu grub

echo
tput setaf 2
echo "################################################################"
echo "################### keys found"
echo "################################################################"
tput sgr0
echo