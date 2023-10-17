#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################
echo "################################################################"
echo "################### FOR ALL"
echo "################################################################"
echo
echo "Adding xorg xkill"
echo
[ -d /etc/X11/xorg.conf.d/ ] || mkdir -p /etc/X11/xorg.conf.d/
sudo cp  settings/xorg/* /etc/X11/xorg.conf.d/
echo
echo
echo "copying cursor file"
if [ -d /usr/share/icons/default/cursors ]; then
	sudo rm /usr/share/icons/default/cursors
fi
[ -d /usr/share/icons/default ] || sudo mkdir -p /usr/share/icons/default
sudo cp -f $installed_dir/settings/cursor/* /usr/share/icons/default
echo

echo
echo "Enable fstrim timer"
sudo systemctl enable fstrim.timer
echo

echo
echo "Testing if qemu agent is still active"
result=$(systemd-detect-virt)
echo "Systemd-detect-virt = "
test=$(systemctl is-enabled qemu-guest-agent.service)
echo "Is qemu guest agent active = "
echo "If one of the parameters is empty you get unary parameter"
echo "Nothing is wrong however"
if [ $test == "enabled" ] && [ $result == "none" ] || [ $result == "oracle" ]; then
	echo
	echo "Disable qemu agent service"
	sudo systemctl disable qemu-guest-agent.service
	echo
fi

echo
echo "Adding nanorc settings"

if [ -f /etc/nanorc ]; then
	sudo cp $installed_dir/settings/nano/nanorc /etc/nanorc
fi

echo
echo "Adding ubuntu keyserver"

if ! grep -q "hkp://keyserver.ubuntu.com:80" /etc/pacman.d/gnupg/gpg.conf; then
echo '
keyserver hkp://keyserver.ubuntu.com:80' | sudo tee --append /etc/pacman.d/gnupg/gpg.conf
fi
echo

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo