#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/primehack
mkdir -p $BACKUPS_DIR/primehack

cp -r "$PRIMEHACK_DIR/config/dolphin-emu/." $BACKUPS_DIR/primehack/dolphin-emu
cp -r "$PRIMEHACK_DIR/data/dolphin-emu/." $BACKUPS_DIR/primehack/dolphin-emu
