#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################
echo "################################################################"
echo "################### Remove drivers I do not need for real metal"
echo "################################################################"

tput setaf 3;echo "  DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK."
echo "  THIS MAY BRICK YOUR SYSTEM";tput sgr0
sudo pacman -R --noconfirm xf86-video-amdgpu
sudo pacman -R --noconfirm xf86-video-ati
sudo pacman -R --noconfirm xf86-video-fbdev
sudo pacman -R --noconfirm xf86-video-intel
sudo pacman -R --noconfirm xf86-video-nouveau
sudo pacman -R --noconfirm xf86-video-openchrome
sudo pacman -R --noconfirm xf86-video-vesa
sudo pacman -R --noconfirm xf86-video-vmware

echo "################################################################"
echo "################### Done"
echo "################################################################"
