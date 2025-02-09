#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak uninstall com.valvesoftware.Steam
if [[ "$SYSTEM" == "steamdeck" ]]; then
  #rm $STEAM_CONFIG_DIR/shortcuts.vdf
fi
