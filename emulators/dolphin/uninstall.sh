#!/bin/bash
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak uninstall org.DolphinEmu.dolphin-emu

rm -rf $DOLPHIN_DIR
