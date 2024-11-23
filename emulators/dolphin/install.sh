#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

#install
flatpak install --user flathub org.DolphinEmu.dolphin-emu
flatpak update --user org.DolphinEmu.dolphin-emu

#dirs
mkdir -p $APPS_DIR

#dolphin.sh
cp $CURRENT_ABSOLUTE_DIR/configs/dolphin.sh $APPS_DIR

#
mkdir -p "$DOLPHIN_DIR/config/dolphin-emu"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/dolphin-emu/." "$DOLPHIN_DIR/config/dolphin-emu"

#
cp $CURRENT_ABSOLUTE_DIR/configs/Dolphin.$SYSTEM.ini $DOLPHIN_DIR/config/dolphin-emu
mv $DOLPHIN_DIR/config/dolphin-emu/Dolphin.$SYSTEM.ini $DOLPHIN_DIR/config/dolphin-emu/Dolphin.ini

