#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
echo "################################################################"
echo "################### Core software"
echo "################################################################"

yay -S --noconfirm --needed chromium
yay -S --noconfirm --needed firefox
#yay -S --noconfirm --needed adobe-source-sans-fonts
yay -S --noconfirm --needed aic94xx-firmware
yay -S --noconfirm --needed arandr
yay -S --noconfirm --needed archiso
yay -S --noconfirm --needed avahi
#yay -S --noconfirm --needed awesome-terminal-fonts
yay -S --noconfirm --needed bash-completion
yay -S --noconfirm --needed bat
yay -S --noconfirm --needed catfish
#yay -S --noconfirm --needed cpuid
#yay -S --noconfirm --needed curl
yay -S --noconfirm --needed dconf-editor
yay -S --noconfirm --needed downgrade
yay -S --noconfirm --needed font-manager
#yay -S --noconfirm --needed git
yay -S --noconfirm --needed gnome-disk-utility
yay -S --noconfirm --needed gparted gpart
yay -S --noconfirm --needed grub-customizer
yay -S --noconfirm --needed gtop
yay -S --noconfirm --needed gvfs 
yay -S --noconfirm --needed gvfs-smb
yay -S --noconfirm --needed hddtemp
yay -S --noconfirm --needed htop
yay -S --noconfirm --needed hw-probe
yay -S --noconfirm --needed kvantum
yay -S --noconfirm --needed linux-firmware-qlogic
yay -S --noconfirm --needed logrotate
yay -S --noconfirm --needed lshw
yay -S --noconfirm --needed man-db
yay -S --noconfirm --needed man-pages
yay -S --noconfirm --needed mkinitcpio-firmware
yay -S --noconfirm --needed mlocate
yay -S --noconfirm --needed meld
yay -S --noconfirm --needed mintstick-git
yay -S --noconfirm --needed most
yay -S --noconfirm --needed network-manager-applet
yay -S --noconfirm --needed networkmanager-openvpn
#yay -S --noconfirm --needed noto-fonts
yay -S --noconfirm --needed ntp
yay -S --noconfirm --needed numlockx
yay -S --noconfirm --needed oh-my-zsh-git
yay -S --noconfirm --needed paru-bin
yay -S --noconfirm --needed pavucontrol
yay -S --noconfirm --needed playerctl
yay -S --noconfirm --needed polkit-gnome
yay -S --noconfirm --needed python-pylint
yay -S --noconfirm --needed python-pywal
#yay -S --noconfirm --needed qbittorrent
#yay -S --noconfirm --needed rate-mirrors-bin
yay -S --noconfirm --needed ripgrep
yay -S --noconfirm --needed rsync
yay -S --noconfirm --needed samba
#yay -S --noconfirm --needed spotify
yay -S --noconfirm --needed squashfs-tools
yay -S --noconfirm --needed sublime-text-4
yay -S --noconfirm --needed system-config-printer
yay -S --noconfirm --needed the_platinum_searcher-bin
yay -S --noconfirm --needed the_silver_searcher
yay -S --noconfirm --needed time
yay -S --noconfirm --needed tree
yay -S --noconfirm --needed upd72020x-fw
yay -S --noconfirm --needed visual-studio-code-bin
#yay -S --noconfirm --needed vlc
yay -S --noconfirm --needed wd719x-firmware
#yay -S --noconfirm --needed wget
#yay -S --noconfirm --needed xcolor
#yay -S --noconfirm --needed xdg-user-dirs 
#yay -S --noconfirm --needed xdg-utils
#yay -S --noconfirm --needed xorg-xkill
yay -S --noconfirm --needed zsh
yay -S --noconfirm --needed zsh-completions
yay -S --noconfirm --needed zsh-syntax-highlighting
yay -S --noconfirm --needed zsh-autosuggestions
yay -S --noconfirm --needed exfatprogs
yay -S --noconfirm --needed ntfs-3g
yay -S --noconfirm --needed nfs-utils 
#yay -S --noconfirm --needed expac
#yay -S --noconfirm --needed feh
yay -S --noconfirm --needed file-roller
#yay -S --noconfirm --needed variety
yay -S --noconfirm --needed nss-mdns            # glibc plugin providing host name resolution via mDNS
yay -S --noconfirm --needed hardcode-fixer-git  # Fixes Hardcoded Icons
#yay -S --noconfirm --needed fish
#yay -S --noconfirm --needed gitahead-bin
#yay -S --noconfirm --needed gitfiend
#yay -S --noconfirm --needed dmenu
yay -S --noconfirm --needed arc-darkest-theme-git
yay -S --noconfirm --needed arc-gtk-theme
#yay -S --noconfirm --needed rxvt-unicode
#yay -S --noconfirm --needed urxvt-fullscreen
#yay -S --noconfirm --needed urxvt-perls
#yay -S --noconfirm --needed urxvt-resize-font-git
if [ ! -f /usr/bin/duf ]; then
  yay -S --noconfirm --needed duf
fi

if [ ! -f /usr/share/xsessions/plasma.desktop ]; then
  yay -S --noconfirm --needed qt5ct
fi
  
echo
tput setaf 6
echo "################################################################"
echo "################### Core Software Installation is Done"
echo "################################################################"
tput sgr0
echo

sudo systemctl enable avahi-daemon.service
sudo systemctl enable ntpd.service