#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env


rm -rf $BACKUPS_DIR/retroarch
mkdir -p $BACKUPS_DIR/retroarch

cp -r "$RA_CONFIG_DIR/saves/." $BACKUPS_DIR/retroarch/saves
cp -r "$RA_CONFIG_DIR/states/." $BACKUPS_DIR/retroarch/states
cp $RA_CONFIG_DIR/retroarch.cfg $BACKUPS_DIR/retroarch
cp $RA_CONFIG_DIR/retroarch-core-options.cfg $BACKUPS_DIR/retroarch
