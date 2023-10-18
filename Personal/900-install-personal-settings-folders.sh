#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################
echo "################################################################"
echo "################### Personal settings to reset to default"
echo "################################################################"
echo "################################################################"
echo "################### Personal directories to create"
echo "################################################################"
echo
echo "Creating folders we use later"
echo
[ -d /etc/skel/.config ] || sudo mkdir -p /etc/skel/.config
[ -d /personal ] || sudo mkdir -p /personal

[ -d $HOME"/.bin" ] || mkdir -p $HOME"/.bin"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.local/share/icons" ] || mkdir -p $HOME"/.local/share/icons"
[ -d $HOME"/.local/share/themes" ] || mkdir -p $HOME"/.local/share/themes"
[ -d $HOME"/.config" ] || mkdir -p $HOME"/.config"
#[ -d $HOME"/.config/xfce4" ] || mkdir -p $HOME"/.config/xfce4"
#[ -d $HOME"/.config/xfce4/xfconf" ] || mkdir -p $HOME"/.config/xfce4/xfconf"
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
[ -d $HOME"/.config/gtk-4.0" ] || mkdir -p $HOME"/.config/gtk-4.0"
#[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
#[ -d $HOME"/.config/fish" ] || mkdir -p $HOME"/.config/fish"
[ -d $HOME"/.config/neofetch" ] || mkdir -p $HOME"/.config/neofetch"
#[ -d $HOME"/Data" ] || mkdir -p $HOME"/Data"
#[ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync"
#[ -d $HOME"/Projects" ] || mkdir -p $HOME"/Projects"

echo
echo "################################################################"
echo "################### Personal settings to install - any OS"
echo "################################################################"
echo
echo "Sublime text settings"
echo
[ -d $HOME"/.config/sublime-text/Packages/User" ] || mkdir -p $HOME"/.config/sublime-text/Packages/User"
cp  $installed_dir/settings/sublimetext/Preferences.sublime-settings $HOME/.config/sublime-text/Packages/User/Preferences.sublime-settings
echo

echo
echo "Blueberry symbolic link"
echo
#uncommenting so that we see the bluetooth icon in our toolbars
#gsettings set org.blueberry use-symbolic-icons false


if grep -q "Arch Linux" /etc/os-release; then
	echo
	tput setaf 2
	echo "################################################################"
	echo "################### Personal settings to install - ArcoLinux"
	echo "################################################################"
	tput sgr0
	echo

	echo "Installing all shell files"
	echo

	cp $installed_dir/settings/shell-personal/.bashrc ~/.bashrc
	sudo cp -f $installed_dir/settings/shell-personal/.bashrc /etc/skel/.bashrc
	cp $installed_dir/settings/shell-personal/.bashrc-personal ~/.bashrc-personal
	cp $installed_dir/settings/shell-personal/.zshrc ~/.zshrc
	sudo cp -f $installed_dir/settings/shell-personal/.zshrc /etc/skel/.zshrc
	cp $installed_dir/settings/shell-personal/.zshrc-personal ~/.zshrc-personal
	#cp $installed_dir/settings/fish/alias.fish ~/.config/fish/alias.fish
	echo


	echo "To personal Kvantum setup"
	echo
	[ -d $HOME"/.config/Kvantum" ] || mkdir -p $HOME"/.config/Kvantum"
	cp -r $installed_dir/settings/Kvantum/* $HOME/.config/Kvantum
	[ -d /etc/skel/.config/Kvantum ] || sudo mkdir -p /etc/skel/.config/Kvantum
	sudo cp -r $installed_dir/settings/Kvantum/* /etc/skel/.config/Kvantum
	echo

	echo 
	echo "To default gtk-3.0 config"
	[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
	cp  $installed_dir/settings/gtk3/settings.ini $HOME/.config/gtk-3.0
	[ -d "/etc/skel/.config/gtk-3.0" ] || sudo mkdir -p "/etc/skel/.config/gtk-3.0"
	sudo cp  $installed_dir/settings/gtk3/settings.ini /etc/skel/.config/gtk-3.0
	echo

	echo
	echo "Adding personal thunar to .config/thunar"
	[ -d $HOME"/.config/Thunar" ] || mkdir -p $HOME"/.config/Thunar"
	cp  $installed_dir/settings/thunar/uca.xml $HOME/.config/Thunar
	[ -d /etc/skel/.config/Thunar ] || sudo mkdir -p /etc/skel/.config/Thunar
	sudo cp  $installed_dir/settings/thunar/uca.xml /etc/skel/.config/Thunar
	echo


fi

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
