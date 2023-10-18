#!/bin/bash
#set -e
##################################################################################################################
# Author    : Ahmet Önder Moğol
##################################################################################################################
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################
if [ -f /usr/bin/startplasma-x11 ]; then
	echo "################################################################"
	echo "################### Plasma specific"
	echo "################################################################"
	echo "################################################################"
	echo "################### Bookmarks plasma to be installed"
	echo "################################################################"

	cp $installed_dir/settings/plasma/bookmarks/user-places.xbel ~/.local/share/user-places.xbel

	echo "################################################################"
	echo "################### Bookmarks plasma installed"
	echo "################################################################"
fi