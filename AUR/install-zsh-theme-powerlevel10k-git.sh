#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################


package="zsh-theme-powerlevel10k-git"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

		tput setaf 2
		echo "######################################################################################"
		echo "################## "$package" is already installed"
		echo "######################################################################################"
		tput sgr0

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		tput setaf 3
		echo "######################################################################################"
		echo "######### Installing with yay"
		echo "######################################################################################"
		tput sgr0

		yay -S --noconfirm --needed $package

	elif pacman -Qi paru &> /dev/null; then

		tput setaf 3
		echo "######################################################################################"
		echo "######### Installing with paru"
		echo "######################################################################################"
		tput sgr0
		paru -S --noconfirm --needed $package

	fi

fi


# Just checking if installation was successful
if pacman -Qi $package &> /dev/null; then

	tput setaf 2
	echo "######################################################################################"
	echo "#########  Checking ..."$package" has been installed"
	echo "######################################################################################"
	tput sgr0

else

	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0

fi

#----------------------------------------------------------------------------------


package="ttf-meslo-nerd-font-powerlevel10k"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

		tput setaf 2
		echo "######################################################################################"
		echo "################## "$package" is already installed"
		echo "######################################################################################"
		tput sgr0

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		tput setaf 3
		echo "######################################################################################"
		echo "######### Installing with yay"
		echo "######################################################################################"
		tput sgr0

		yay -S --noconfirm --needed $package

	elif pacman -Qi paru &> /dev/null; then

		tput setaf 3
		echo "######################################################################################"
		echo "######### Installing with paru"
		echo "######################################################################################"
		tput sgr0
		paru -S --noconfirm --needed $package

	fi

fi


# Just checking if installation was successful
if pacman -Qi $package &> /dev/null; then

	tput setaf 2
	echo "######################################################################################"
	echo "#########  Checking ..."$package" has been installed"
	echo "######################################################################################"
	tput sgr0

else

	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0

fi

#----------------------------------------------------------------------------------

zshPath="/home/"$USER"/.zshrc"
alacrittyPath="/home/"$USER"/.config/alacritty/alacritty.yml"
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
echo "Beware that we change the font in  ~/.config/alacritty/alacritty.yml"
echo "######################################################################################"
tput sgr0

FIND='family: hack'

REPLACE='family: MesloLGS NF'

sed -i "s/$FIND/$REPLACE/g" $alacrittyPath


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
echo "The package has been installed"
echo "######################################################################################"
tput sgr0




