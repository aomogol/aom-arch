# arch-setup
 ARCH Linux kurulum için scriptler

#################################################### 
 
 
chaotic repo ekleme  
  
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'


#Append (adding to the end of the file) to /etc/pacman.conf:

#[chaotic-aur]
#Include = /etc/pacman.d/chaotic-mirrorlist
