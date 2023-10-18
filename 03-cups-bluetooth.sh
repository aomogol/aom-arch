#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
echo "################################################################"
echo "################### Bluetooth"
echo "################################################################"

if [ ! -f /usr/share/xsessions/plasma.desktop ]; then
  yay -S --noconfirm --needed blueberry
fi
#yay -S --noconfirm --needed pulseaudio-bluetooth
yay -S --noconfirm --needed bluez
yay -S --noconfirm --needed bluez-libs
yay -S --noconfirm --needed bluez-utils

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

if ! grep -q "load-module module-switch-on-connect" /etc/pulse/system.pa; then
    echo 'load-module module-switch-on-connect' | sudo tee --append /etc/pulse/system.pa
fi

if ! grep -q "load-module module-bluetooth-policy" /etc/pulse/system.pa; then
    echo 'load-module module-bluetooth-policy' | sudo tee --append /etc/pulse/system.pa
fi

if ! grep -q "load-module module-bluetooth-discover" /etc/pulse/system.pa; then
    echo 'load-module module-bluetooth-discover' | sudo tee --append /etc/pulse/system.pa
fi

echo "################################################################"
echo "################### Bluetooth Install - Done"
echo "################################################################"
echo "################################################################"
echo "################### cups"
echo "################################################################"
yay -S --noconfirm --needed cups
yay -S --noconfirm --needed cups-pdf
yay -S --noconfirm --needed ghostscript
yay -S --noconfirm --needed gsfonts
yay -S --noconfirm --needed gutenprint
yay -S --noconfirm --needed gtk3-print-backends
yay -S --noconfirm --needed libcups
yay -S --noconfirm --needed system-config-printer
yay -S --noconfirm --needed sane
yay -S --noconfirm --needed simple-scan
yay -S --noconfirm --needed hplip

sudo systemctl enable --now cups.service
echo "################################################################"
echo "################### Cups Install = Done"
echo "################################################################"