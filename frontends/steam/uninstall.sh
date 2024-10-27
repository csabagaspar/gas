#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env


rm $STEAM_CONFIG_DIR/shortcuts.vdf
rm -rf $STEAM_CONFIG_DIR/grid

rm -rf $STEAM_CONTROLLERS_DIR/es-de

