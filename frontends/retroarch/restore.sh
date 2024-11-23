#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp -r "$BACKUPS_DIR/retroarch/saves/." "$RA_CONFIG_DIR/saves"
cp -r "$BACKUPS_DIR/retroarch/states/." "$RA_CONFIG_DIR/states"

cp $BACKUPS_DIR/retroarch/retroarch.cfg $RA_CONFIG_DIR
cp $BACKUPS_DIR/retroarch/retroarch-core-options.cfg $RA_CONFIG_DIR
