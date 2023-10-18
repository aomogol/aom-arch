#!/bin/bash
#set -e
##################################################################################################################
# Author	:	
##################################################################################################################

tput setaf 3;echo "  DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK."
echo "  THIS MAY BRICK YOUR SYSTEM"
echo "  REUSE THE SCRIPT TO MAKE YOUR OWN SCRIPT"
tput sgr0

sudo pacman -S --noconfirm --needed nvidia
sudo pacman -S --noconfirm --needed nvidia-settings
sudo pacman -S --noconfirm --needed nvidia-utils

echo "################################################################"
echo "####                      packages installed              ######"
echo "################################################################"
