#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
#yay -S --needed --noconfirm 
#### web browsers
yay -S --needed --noconfirm google-chrome brave-bin thorium-browser-bin
#yay -S --needed --noconfirm firefox chromium opera
#yay -S --needed --noconfirm vivaldi vivaldi-ffmpeg-codecs vivaldi-widevine

yay -S --needed --noconfirm pkgcacheclean
yay -S --needed --noconfirm remmina freerdp remmina-plugin-rdesktop spice-gtk libvncserver
yay -S --needed --noconfirm traceroute lhasa warpinator timeshift-bin bleachbit fd
yay -S --needed --noconfirm tldr procs inxi os-prober caffeine-ng
yay -S --needed --noconfirm partitionmanager kdeconnect gparted
yay -S --needed --noconfirm etcher-bin gnome-firmware
yay -S --needed --noconfirm dolphin dolphin-plugins ffmpegthumbs
yay -S --needed --noconfirm ncdu
yay -S --needed --noconfirm cpu-x

## fuzzy finder
## konunun detayı https://wiki.archlinux.org/title/fzf
## https://github.com/junegunn/fzf
### https://github.com/jhawthorn/fzy
yay -S --needed --noconfirm skim fzf paruz fzy

# sıkıştırma ile ilgili toollar
yay -S --noconfirm --needed p7zip zip unrar unzip 
yay -S --noconfirm --needed unarchiver 
yay -S --needed --noconfirm unace sharutils uudeview arj cabextract ark
yay -S --needed --noconfirm peazip quad arc zpaq upx paq8o
yay -S --noconfirm --needed gzip lrzip lzop

### czkawka duplicate finder
yay -S --needed --noconfirm czkawka-gui-bin  

###### aksesuar
#yay -S --needed --noconfirm  ocs-url

## FTP
yay -S --needed --noconfirm filezilla

## Konferans uygulamaları
yay -S --needed --noconfirm zoom

## IM
yay -S --needed --noconfirm discord 
yay -S --needed --noconfirm telegram-desktop

## Torrent
yay -S --needed --noconfirm qbittorrent

## e-Mail
yay -S --needed --noconfirm thunderbird

## Muzik
yay -S --needed --noconfirm spotify

## SSH client
yay -S --needed --noconfirm putty

###########  Office
yay -S --needed --noconfirm  libreoffice aspell-en libmythes mythes-en languagetool
yay -S --needed --noconfirm onlyoffice

## Document viewer
yay -S --needed --noconfirm  evince

##### Yayın yapma ve video editing
yay -S --needed --noconfirm obs-studio kdenlive

##video transcoder
yay -S --needed --noconfirm handbrake

#########################  Photo & video
yay -S --needed --noconfirm  rawtherapee darktable

### Video player
yay -S --needed --noconfirm vlc 

## ip tv için
yay -S --needed --noconfirm aribb24
#qmplay2
## An IPTV streaming application
yay -S --needed --noconfirm hypnotix

#### Image Viewer
yay -S --needed --noconfirm digikam

#### screeen shot
yay -S --needed --noconfirm spectacle
   # scrot

## Ekran kaydetmek için
yay -S --needed --noconfirm simplescreenrecorder

## Video editing
yay -S --needed --noconfirm lightworks

## scanner uygulamaları
yay -S --needed --noconfirm xsane xsane-gimp  simple-scan

#########################  codecler
yay -S --needed --noconfirm a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore
##### DONE -----------------------------------------########

