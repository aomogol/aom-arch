#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################

echo "################################################################"
echo "################### development tools "
echo "################################################################"

yay -S --needed --noconfirm go python docker nodejs npm
sudo groupadd docker
#newgrp docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl enable containerd.service
sudo systemctl start containerd.service

sudo chmod 666 /var/run/docker.sock

yay -S --needed --noconfirm clang cmake ninja pkgconf gtk3
#### development add-ons
yay -S --needed --noconfirm python-pip python-pipx python-setuptools
#yay -S --needed --noconfirm node-gyp perl-xml-parser
### IDE ve yardımcı toollar
yay -S --needed --noconfirm  meld visual-studio-code-bin sublime-text-4 gedit
#### vscodium-bin
#######################################################
echo "################################################################"
echo "################### Android tools & Scrcpy Install "
echo "################################################################"
# plugin your device with a usb cable
# keep it awake at all times so you see the message you need to noconfirm
# on your android device make sure you find the settings
# enable usb debugging on your android
# https://www.howtogeek.com/129728/how-to-access-the-developer-options-menu-and-enable-usb-debugging-on-android-4.2/
# then start scrcpy in a terminal and confirm any and all messages on your android device
# https://wiki.archlinux.org/index.php/Android_Debug_Bridge
# https://github.com/Genymobile/scrcpy
yay -S --noconfirm --needed android-tools
yay -S --noconfirm --needed scrcpy
#next one does not seem necessary
#yay -S --noconfirm --needed android-udev 

echo "################################################################"
echo "################### Scrcpy Install = Done "
echo "################################################################"

