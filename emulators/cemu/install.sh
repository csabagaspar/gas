#!/bin/bash
#
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

flatpak install --user info.cemu.Cemu
flatpak update --user info.cemu.Cemu

mkdir -p "$CEMU_DIR/config/Cemu"
cp $CURRENT_ABSOLUTE_DIR/configs/settings.$SYSTEM.xml $CEMU_DIR/config/Cemu
mv $CEMU_DIR/config/Cemu/settings.$SYSTEM.xml $CEMU_DIR/config/Cemu/settings.xml

mkdir -p "$CEMU_DIR/data/Cemu"
cp $CURRENT_ABSOLUTE_DIR/files/keys.txt $CEMU_DIR/data/Cemu

mkdir -p "$CEMU_DIR/config/Cemu/controllerProfiles"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/controllerProfiles/." "$CEMU_DIR/config/Cemu/controllerProfiles"

mkdir -p "$CEMU_DIR/data/Cemu/graphicPacks/downloadedGraphicPacks"
unzip -q -o "$CACHE/$CEMU_GRAPHIC_PACKS_LATEST" -d "$CEMU_DIR/data/Cemu/graphicPacks/downloadedGraphicPacks/"



