#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

if [[ "$SYSTEM" == "steamdeck" ]]; then
  #rm $STEAM_CONFIG_DIR/shortcuts.vdf
fi
