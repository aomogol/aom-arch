#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
echo
echo "Pacman parallel downloads if needed - for Arch Linux"
FIND="#ParallelDownloads = 5"
REPLACE="ParallelDownloads = 20"
sudo sed -i "s/$FIND/$REPLACE/g" /etc/pacman.conf
sudo pacman -Sy

## Kullanıcı için grup atamaları
sudo usermod -aG wheel,users,power,lp,adm,audio,video,optical,storage,network,rfkill $USER

# yay install
sudo pacman -S --needed git base-devel curl wget
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
sudo rm -r yay-bin

yay -S --needed --noconfirm chromium neofetch wget terminator reflector

##################################################################################################################
# echo "Deleting current /etc/pacman.d/mirrorlist and replacing with"
# echo
sudo reflector --latest 10  --fastest 10 --sort rate --protocol http,https --save /etc/pacman.d/mirrorlist
# echo "Server = https://mirror.osbeck.com/archlinux/\$repo/os/\$arch
# Server = http://mirror.osbeck.com/archlinux/\$repo/os/\$arch
# Server = https://geo.mirror.pkgbuild.com/\$repo/os/\$arch
# Server = http://mirror.rackspace.com/archlinux/\$repo/os/\$arch
# Server = https://mirror.rackspace.com/archlinux/\$repo/os/\$arch
# Server = https://mirrors.kernel.org/archlinux/\$repo/os/\$arch" | sudo tee /etc/pacman.d/mirrorlist
# echo
# tput setaf 2
# echo "########################################################################"
# echo "Arch Linux Servers have been written to /etc/pacman.d/mirrorlist"
# echo "Use nmirrorlist to inspect"
# echo "########################################################################"
# tput sgr0
# echo
yay -Syyu --noconfirm

### chaotic AUR install
#wget -q -O chaotic-AUR-installer.bash https://raw.githubusercontent.com/SharafatKarim/chaotic-AUR-installer/main/install.bash && sudo bash chaotic-AUR-installer.bash && rm chaotic-AUR-installer.bash
