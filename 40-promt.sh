#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
tput setaf 1
echo "######################################################################################"
echo "ZSH Powerlevel10k install"
echo "######################################################################################"
tput sgr0
echo
#----------------------------------------------------------------------------------
yay -S --noconfirm --needed zsh-theme-powerlevel10k-git
yay -S --noconfirm --needed ttf-meslo-nerd-font-powerlevel10k
yay -S --noconfirm --needed powerline-fonts

zshPath="/home/"$USER"/.zshrc"
xresourcesPath="/home/"$USER"/.Xresources"

tput setaf 1
echo "######################################################################################"
echo "Beware that we add a line to your personal ~/.zshrc file at the bottom"
echo "######################################################################################"
tput sgr0
echo
echo '
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' | sudo tee --append $zshPath
echo

echo "######################################################################################"
echo "We will comment out this line  ZSH_THEME="random""
echo "######################################################################################"
echo

FIND='ZSH_THEME="random"'

REPLACE='#ZSH_THEME="random"'

sed -i "s/$FIND/$REPLACE/g" $zshPath

tput setaf 1
echo "######################################################################################"
echo "Beware that we add a line to your personal ~/.zshrc file at the bottom"
echo "######################################################################################"
tput sgr0

echo
echo "######################################################################################"
echo "We will add a line to quiet the prompt"
echo "######################################################################################"

echo '
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet' | sudo tee --append $zshPath
echo

tput setaf 1
echo "######################################################################################"
echo "Beware that we change the font in  ~/.Xresources for urxvt"
echo "######################################################################################"
tput sgr0

FIND='xft:Monospace:regular:size=11'

REPLACE='xft:MesloLGS NF:size=11'

sed -i "s/$FIND/$REPLACE/g" $xresourcesPath

tput setaf 3
echo "######################################################################################"
echo "This package has been created for ZSH"
echo "Switch to ZSH with our alias called 'tozsh'"
echo "######################################################################################"
tput sgr0

tput setaf 2
echo "######################################################################################"
echo "ZSH Powerlevel10k has been installed"
echo "######################################################################################"
tput sgr0



