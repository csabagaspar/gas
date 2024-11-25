#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak install --user flathub net.lutris.Lutris
flatpak update --user net.lutris.Lutris

cp -r "$CURRENT_ABSOLUTE_DIR/scripts/." "$ROMS_DIR/lutris"
