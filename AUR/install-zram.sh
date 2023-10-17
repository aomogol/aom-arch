#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################

#https://github.com/systemd/zram-generator

sudo pacman -S zram-generator --noconfirm --needed

#----------------------------------------------------------------------------------

echo '[zram0]
zram-size = ram / 2' | sudo tee /etc/systemd/zram-generator.conf

#create new devices
sudo systemctl daemon-reload

sudo systemctl start /dev/zram0

echo "check with"
echo "swapon or zramctl or"
echo "with systemdsystemctl status systemd-zram-setup@zram0.service"
