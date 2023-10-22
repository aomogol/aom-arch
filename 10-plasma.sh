#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
  echo "################################################################"
  echo "################### Plasma related applications"
  echo "################################################################"
  yay -Syyu
  yay -Rdd --noconfirm sddm 
  yay -Rdd --noconfirm sddm-kcm
  yay -S --noconfirm --needed sddm-git 
  yay -S --noconfirm --needed sddm-kcm
  yay -S --noconfirm --needed plasma-desktop 
  yay -S --noconfirm --needed plasma-nm 
  yay -S --noconfirm --needed plasma-pa
  yay -S --noconfirm --needed dolphin dolphin-plugins 
  yay -S --noconfirm --needed konsole 
  yay -S --noconfirm --needed kdeplasma-addons 
  yay -S --noconfirm --needed kde-gtk-config 
  yay -S --noconfirm --needed breeze-gtk 
  yay -S --noconfirm --needed ark 
  yay -S --noconfirm --needed powerdevil 
  yay -S --noconfirm --needed ffmpegthumbs 
  yay -S --noconfirm --needed filelight 
  yay -S --noconfirm --needed gwenview
  yay -S --noconfirm --needed kcalc kcharselect 
  yay -S --noconfirm --needed kcharselect 
  yay -S --noconfirm --needed kcolorchooser 
  yay -S --noconfirm --needed kcron
  yay -S --noconfirm --needed kdeconnect 
  yay -S --noconfirm --needed kdegraphics-thumbnailers
  yay -S --noconfirm --needed kdenetwork-filesharing 
  yay -S --noconfirm --needed kdesdk-thumbnailers
  yay -S --noconfirm --needed kdialog 
  yay -S --noconfirm --needed kmix 
  yay -S --noconfirm --needed kolourpaint 
  yay -S --noconfirm --needed kontrast
  yay -S --noconfirm --needed okular
  yay -S --noconfirm --needed packagekit-qt5 
  yay -S --noconfirm --needed print-manager 
  yay -S --noconfirm --needed xdg-desktop-portal 
  yay -S --noconfirm --needed xdg-desktop-portal-kde
  yay -S --noconfirm --needed discover
  yay -S --noconfirm --needed kate
  yay -S --noconfirm --needed konsave

  sudo systemctl enable NetworkManager
  sudo systemctl start NetworkManager
  sudo systemctl enable sddm
  #sudo systemctl start sddm

echo "################### Plasma related applications installed "
echo "################### Please REBOOT"
 