#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################
echo "################################################################"
echo "################### Display manager"
echo "################################################################"
# we are on Arch Linux
if grep -q "archlinux" /etc/os-release; then
	echo "################################################################"
	echo "################### We are on ARCH LINUX"
	echo "################################################################"
	echo
	echo "Installing and changing sddm theme"
	echo "Archinstall is by default lightdm"
	echo "Any time tosddm"
	echo
	echo "Copying sddm files"
	sudo pacman -S --noconfirm --needed sddm 
	sudo cp -f /usr/share/archlinux-tweak-tool/data/arco/sddm/sddm.conf /etc/sddm.conf

	[ -d /etc/sddm.conf.d ] || sudo mkdir /etc/sddm.conf.d
	sudo cp -f /usr/share/archlinux-tweak-tool/data/arco/sddm.conf.d/kde_settings.conf /etc/sddm.conf.d/kde_settings.conf
	FIND="Current=breeze"
	REPLACE="Current=breeze"
	sudo sed -i "s/$FIND/$REPLACE/g" /etc/sddm.conf

	if [ -f /etc/lightdm/lightdm.conf ]; then

		echo
		echo "Autologin to lightdm"
		echo
		FIND="#autologin-user="
		REPLACE="autologin-user=$USER"
    	sudo sed -i "s/$FIND/$REPLACE/g" /etc/lightdm/lightdm.conf

		FIND="#autologin-session="
		REPLACE="autlogin-session=xfce"
    	sudo sed -i "s/$FIND/$REPLACE/g" /etc/lightdm/lightdm.conf

    	sudo groupadd autologin
		sudo usermod -a -G autologin $USER

	fi

	if [ -f /etc/lightdm/lightdm-gtk-greeter.conf ]; then

		echo
		echo "Changing the look of lightdm gtk greeter"
		echo

		FIND="#theme-name="
		REPLACE="theme-name=Arc-Dark"
		sudo sed -i "s/$FIND/$REPLACE/g" /etc/lightdm/lightdm-gtk-greeter.conf

		sudo cp $installed_dir/settings/wallpaper/lightdm.jpg /etc/lightdm/lightdm.jpg

		FIND="#background="
		REPLACE="background=\/etc\/lightdm\/lightdm.jpg"
		sudo sed -i "s/$FIND/$REPLACE/g" /etc/lightdm/lightdm-gtk-greeter.conf

	fi

	echo
	tput setaf 6
	echo "################################################################"
	echo "################### Done"
	echo "################################################################"
	tput sgr0
	echo

fi

