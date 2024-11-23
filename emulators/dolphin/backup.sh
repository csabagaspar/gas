#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/dolphin
mkdir -p $BACKUPS_DIR/dolphin

cp -r "$DOLPHIN_DIR/config/dolphin-emu/." $BACKUPS_DIR/dolphin/dolphin-emu
