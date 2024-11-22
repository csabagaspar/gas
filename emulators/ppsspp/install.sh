#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

#install
flatpak install --user flathub org.ppsspp.PPSSPP
flatpak update --user org.ppsspp.PPSSPP

#dirs
mkdir -p $APPS_DIR
mkdir -p $PPSSPP_PSP_DIR
mkdir -p $PPSSPP_PSP_DIR/Cheats/
mkdir -p $PPSSPP_PSP_DIR/SYSTEM/

#ppsspp.sh
cp $CURRENT_ABSOLUTE_DIR/configs/ppsspp.sh $APPS_DIR

#cheat.db
cp $CACHE/$PPSSPP_CHEAT_DB_NAME $PPSSPP_PSP_DIR/Cheats

#controls.ini
cp $CURRENT_ABSOLUTE_DIR/configs/controls.$SYSTEM.ini $PPSSPP_PSP_DIR/SYSTEM
mv $PPSSPP_PSP_DIR/SYSTEM/controls.$SYSTEM.ini $PPSSPP_PSP_DIR/SYSTEM/controls.ini

#ppsspp.ini
cp $CURRENT_ABSOLUTE_DIR/configs/ppsspp.$SYSTEM.ini $PPSSPP_PSP_DIR/SYSTEM
mv $PPSSPP_PSP_DIR/SYSTEM/ppsspp.$SYSTEM.ini $PPSSPP_PSP_DIR/SYSTEM/ppsspp.ini

#plugins
#https://www.ppsspp.org/docs/reference/plugins/
#https://github.com/ThirteenAG/WidescreenFixesPack/releases?q=PPSSPP&expanded=true

#dlc
#to $PPSSPP_PSP_DIR/GAME
#to $PPSSPP_PSP_DIR/SAVEDATA
#https://cdromance.org/sony-psp-dlc-list-psp-downloadable-content/

#textures
# to $PPSSPP_PSP_DIR/TEXTURES
# https://forums.ppsspp.org/forumdisplay.php?fid=36

#shaders
#to $PPSSPP_PSP_DIR/shaders
#https://forums.ppsspp.org/showthread.php?tid=6594
#https://forums.ppsspp.org/showthread.php?tid=6594&pid=55390#pid55390
#https://forums.ppsspp.org/showthread.php?tid=6594&pid=124441#pid124441
#https://forums.ppsspp.org/showthread.php?tid=6594&pid=54841#pid54841
#https://forums.ppsspp.org/showthread.php?tid=6594&pid=112250#pid112250
#https://buildbot.libretro.com/assets/system/
