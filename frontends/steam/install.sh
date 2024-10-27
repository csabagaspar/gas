#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

#controllers
mkdir -p "$STEAM_CONTROLLERS_DIR/es-de"
cp -r "$CURRENT_ABSOLUTE_DIR/configs/es-de" "$STEAM_CONTROLLERS_DIR"

#icons
rsync -av "$CURRENT_ABSOLUTE_DIR/files/steam-input/binding_icons" "$HOME/.steam/steam/tenfoot/resource/images/library/controller/binding_icons"

#shortcuts
mkdir -p "$STEAM_CONFIG_DIR/grid"
cp -r "$CURRENT_ABSOLUTE_DIR/files/grid" "$STEAM_CONFIG_DIR"
cp "$CURRENT_ABSOLUTE_DIR/configs/shortcuts.vdf" "$STEAM_CONFIG_DIR"
