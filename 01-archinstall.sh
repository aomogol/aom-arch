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

yay -S --noconfirm --needed neofetch reflector nano
yay -S --noconfirm --needed xdg-user-dirs 
yay -S --noconfirm --needed xdg-utils
yay -S --noconfirm --needed xorg-xkill
yay -S --noconfirm --needed xcolor
yay -S --noconfirm --needed rate-mirrors-bin

##################################################################################################################
# echo "rate-mirror "
export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$TMPFILE arch --max-delay=43200 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist
##################################################################################################################

##################################################################################################################
# echo "Deleting current /etc/pacman.d/mirrorlist and replacing with"
# echo
# sudo reflector --latest 10  --fastest 10 --sort rate --protocol http,https --save /etc/pacman.d/mirrorlist
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

#
# determine processor type and install microcode
# 
proc_type=$(lscpu | awk '/Vendor ID:/ {print $3}')
case "$proc_type" in
	GenuineIntel)
		print "Installing Intel microcode"
		yay -S --needed --noconfirm intel-ucode
		proc_ucode=intel-ucode.img
		;;
	AuthenticAMD)
		print "Installing AMD microcode"
		yay -S --needed --noconfirm amd-ucode
		proc_ucode=amd-ucode.img
		;;
esac	

### chaotic AUR install
#wget -q -O chaotic-AUR-installer.bash https://raw.githubusercontent.com/SharafatKarim/chaotic-AUR-installer/main/install.bash && sudo bash chaotic-AUR-installer.bash && rm chaotic-AUR-installer.bash

echo "
###############################################################################
# Add user to wheel
###############################################################################
#"
#clear
echo "Uncomment %wheel group in sudoers (around line 85):"
echo "Before: #%wheel ALL=(ALL:ALL) ALL"
echo "After:  %wheel ALL=(ALL:ALL) ALL"
echo ""
#read -p "Open sudoers now?" c
EDITOR=nano sudo -E visudo
sudo usermod -aG wheel $USER

echo "
###############################################################################
# Done
###############################################################################
#"

#echo "
###############################################################################
# Remove no password sudo rights
###############################################################################
#"
# Remove no password sudo rights
#sed -i 's/^%wheel ALL=(ALL) NOPASSWD: ALL/# %wheel ALL=(ALL) NOPASSWD: ALL/' /etc/sudoers
# Add sudo rights
#sed -i 's/^# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/' /etc/sudoers

# Replace in the same state
#cd $pwd
#echo "
###############################################################################
# Done
###############################################################################
#"

## Kullanıcı için grup atamaları
#sudo usermod -aG wheel,users,power,lp,adm,audio,video,optical,storage,network,rfkill $USER