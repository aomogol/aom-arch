#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

# software from AUR (Arch User Repositories)
# https://aur.archlinux.org/packages/
echo "################################################################"
echo "################### AUR from folder - Software to install"
echo "################################################################"

#result=$(systemd-detect-virt)
#if [ $result = "none" ];then
#	echo "################################################################"
#	echo "####### Installing VirtualBox"
#	echo "################################################################"
#	sh AUR/install-virtualbox-for-linux.sh	
#else
#	echo "################################################################"
#	echo "### You are on a virtual machine - skipping VirtualBox"
#	echo "################################################################"
#fi

# these come last always
echo "Checking if icons from applications have a hardcoded path"
echo "and fixing them"
echo "Wait for it ..."

sudo hardcode-fixer

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
