# arch-setup
 ARCH Linux kurulum için scriptler

#################################################### 
 
 


### chaotic AUR install
#wget -q -O chaotic-AUR-installer.bash https://raw.githubusercontent.com/SharafatKarim/chaotic-AUR-installer/main/install.bash && sudo bash chaotic-AUR-installer.bash && rm chaotic-AUR-installer.bash


##### chaotic repo ekleme  
  
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'


Append (adding to the end of the file) to /etc/pacman.conf:

[chaotic-aur]

Include = /etc/pacman.d/chaotic-mirrorlist