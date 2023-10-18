#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
  echo "################################################################"
  echo "################### Plasma related applications"
  echo "################################################################"
  yay -Syyu
  yay -R --noconfirm sddm sddm-kcm
  yay -S --noconfirm --needed sddm-git sddm-kcm
  yay -S --noconfirm --needed plasma-desktop 
  yay -S --noconfirm --needed plasma-nm plasma-pa
  yay -S --noconfirm --needed dolphin dolphin-plugins konsole 
  yay -S --noconfirm --needed kdeplasma-addons kde-gtk-config 
  yay -S --noconfirm --needed breeze-gtk ark powerdevil 
  yay -S --noconfirm --needed ffmpegthumbs filelight gwenview
  yay -S --noconfirm --needed kcalc kcharselect kcharselect kcolorchooser kcron
  yay -S --noconfirm --needed kdeconnect kdegraphics-thumbnailers
  yay -S --noconfirm --needed kdenetwork-filesharing kdesdk-thumbnailers
  yay -S --noconfirm --needed kdialog kmix kolourpaint kontrast
  yay -S --noconfirm --needed okular packagekit-qt5 print-manager 
  yay -S --noconfirm --needed xdg-desktop-portal xdg-desktop-portal-kde
  yay -S --noconfirm --needed discover

  sudo systemctl enable NetworkManager
  sudo systemctl start NetworkManager
  sudo systemctl enable sddm
  sudo systemctl start sddm

echo "################### Plasma related applications installed "
 