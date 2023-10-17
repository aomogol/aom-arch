#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
echo
tput setaf 2
echo "################################################################"
echo "################### Install fonts"
echo "################################################################"
tput sgr0
echo
func_install() {
    if pacman -Qi $1 &> /dev/null; then
        tput setaf 2
        echo "###############################################################################"
        echo "################## The package "$1" is already installed"
        echo "###############################################################################"
        echo
        tput sgr0
    else
        tput setaf 3
        echo "###############################################################################"
        echo "##################  Installing package "  $1
        echo "###############################################################################"
        echo
        tput sgr0
        yay -S --noconfirm --needed $1
    fi
}
list=(
ttf-fantasque-sans-mono
ttf-iosevka-nerd
ttf-material-design-iconic-font
ttf-meslo-nerd-font-powerlevel10k
ttf-sourcecodepro-nerd
ttf-hack 
ttf-roboto 
ttf-ubuntu-font-family 
ttf-ms-fonts
)

count=0

for name in "${list[@]}" ; do
    count=$[count+1]
    tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
    func_install $name
done
echo
tput setaf 6
echo "################################################################"
echo "################### Fonts Install - Done"
echo "################################################################"
tput sgr0
echo

###########  fonts
# yay -S --needed --noconfirm ttf-hack ttf-roboto ttf-ubuntu-font-family ttf-ms-fonts
# awesome-terminal-fonts cantarell-fonts noto-fonts
# ttf-bitstream-vera ttf-dejavu ttf-droid adobe-source-sans-pro-fonts
# ttf-inconsolata ttf-liberation tamsyn-font