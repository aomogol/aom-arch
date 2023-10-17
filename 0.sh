#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
sh 01-archinstall.sh
sh 10-plasma.sh
sh 20-core-software.sh
sh 30-aom.sh
sh 40-promt.sh
sh 50-fonts.sh
sh 60-cups-bluetooth.sh
sh 70-pipewire.sh
sh 80-development.sh
#sh 81-flutter-set.sh
sh 90-qemu.sh
#sh 91-notebook-icin-kurulumlar.sh

echo "################################################################"
echo "################### Personal folder"
echo "################################################################"
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
cd $installed_dir/Personal

sh 900-install-personal-settings-folders.sh
