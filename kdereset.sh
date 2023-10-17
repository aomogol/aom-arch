#!/bin/bash
#
# Created by LC on 2018-11-28
#
# To alleviate 'messed-up desktop icons' bug (KDE Bugtracking System – Bug 354802)

cd /home/aom/.config
sudo cp plasma-org.kde.plasma.desktop-appletsrc.yedek  plasma-org.kde.plasma.desktop-appletsrc
killall plasmashell
kstart plasmashell
