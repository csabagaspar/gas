#!/bin/bash
#
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

flatpak install --user flathub io.github.shiiion.primehack
flatpak update --user io.github.shiiion.primehack

mkdir -p $APPS_DIR
cp $CURRENT_ABSOLUTE_DIR/configs/primehack.sh $APPS_DIR

mkdir -p "$PRIMEHACK_DIR/config/dolphin-emu"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/config/dolphin-emu/." "$PRIMEHACK_DIR/config/dolphin-emu"

mkdir -p "$PRIMEHACK_DIR/data/dolphin-emu"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/data/dolphin-emu/." "$PRIMEHACK_DIR/data/dolphin-emu"

cp $CURRENT_ABSOLUTE_DIR/configs/Dolphin.$SYSTEM.ini $PRIMEHACK_DIR/config/dolphin-emu
mv $PRIMEHACK_DIR/config/dolphin-emu/Dolphin.$SYSTEM.ini $PRIMEHACK_DIR/config/dolphin-emu/Dolphin.ini
