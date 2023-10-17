#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
echo "################################################################"
echo "################### QEMU "
echo "################################################################"
#tutorial https://www.youtube.com/watch?v=JxSGT_3UU8w
#https://computingforgeeks.com/install-kvm-qemu-virt-manager-arch-manjar/
yay -Rdd iptables --noconfirm
yay -S --noconfirm --needed iptables-nft
yay -S --noconfirm --needed ebtables
yay -S --noconfirm --needed qemu-full
yay -S --noconfirm --needed virt-manager
yay -S --noconfirm --needed virt-viewer
yay -S --noconfirm --needed dnsmasq
yay -S --noconfirm --needed vde2
yay -S --noconfirm --needed bridge-utils
#ovmf
yay -S --noconfirm --needed edk2-ovmf
#yay -S --noconfirm --needed spice-vdagent
#yay -S --noconfirm --needed xf86-video-qxl
yay -S --noconfirm --needed dmidecode


echo -e "options kvm-intel nested=1" | sudo tee -a /etc/modprobe.d/kvm-intel.conf
user=$(whoami)
sudo gpasswd -a $user libvirt
sudo gpasswd -a $user kvm
#starting service
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

echo 'nvram = ["/usr/share/ovmf/x64/OVMF_CODE.fd:/usr/share/ovmf/x64/OVMF_VARS.fd"]' | sudo tee --append /etc/libvirt/qemu.conf

sudo virsh net-define /etc/libvirt/qemu/networks/default.xml
sudo virsh net-autostart default
sudo systemctl restart libvirtd.service

echo "############################################################################################################"
echo "#####################                        FIRST REBOOT                              #####################"
echo "############################################################################################################"
## Vagrant
#yay -S --needed --noconfirm vagrant
# GNS3
#yay -S --needed --noconfirm gns3-gui gns3-server dynamips ubridge virtualbox-sdk wireshark-qt vpcs
## add group  kvm , libvirt , wireshark , docker,ubridge
#ln -s /usr/bin/wireshark ~/GNS3/wireshark/
####


