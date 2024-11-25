#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak install --user flathub net.lutris.Lutris
flatpak update --user net.lutris.Lutris

mkdir -p $APPS_DIR
cp $CURRENT_ABSOLUTE_DIR/configs/lutris.sh $APPS_DIR

cp -r "$CURRENT_ABSOLUTE_DIR/scripts/." "$ROMS_DIR/lutris"
