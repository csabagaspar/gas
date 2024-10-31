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

#dlc
mkdir -p $PPSSPP_PSP_DIR/GAME
mkdir -p $PPSSPP_PSP_DIR/SAVEDATA

for DLC in $(find $ROMS_DIR/psp_dlc/ -name *.zip); do
  unzip -q -o "$DLC" -d "$PPSSPP_PSP_DIR"
done

#textures
