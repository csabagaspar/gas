#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak uninstall com.steamgriddb.steam-rom-manager
rm -rf $STEAM_ROM_MANAGER_DIR
