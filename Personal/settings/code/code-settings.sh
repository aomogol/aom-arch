#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Code settings"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed python-black
sudo pacman -S --noconfirm --needed python-pylint


echo "Install the following extensions and theme"
echo "isort"
echo "python"
echo "atom one dark theme"
echo "material icon theme of material theme icons"
echo
echo "Change the following settings"
echo "Go to  File, Preferences,settings"
echo "change to black"

echo
echo "pylint not enabled"

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
