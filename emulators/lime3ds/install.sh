#!/bin/bash
#
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

flatpak install --user flathub io.github.lime3ds.Lime3DS
flatpak update --user io.github.lime3ds.Lime3DS

mkdir -p $LIME3DS_DIR/config/lime3ds-emu
cp $CURRENT_ABSOLUTE_DIR/configs/qt-config.$SYSTEM.ini $LIME3DS_DIR/config/lime3ds-emu/
mv $LIME3DS_DIR/config/lime3ds-emu/qt-config.$SYSTEM.ini $LIME3DS_DIR/config/lime3ds-emu/qt-config.ini

