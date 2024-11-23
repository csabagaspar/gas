#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp -r "$BACKUPS_DIR/ppsspp/SAVEDATA/." "$PPSSPP_PSP_DIR/SAVEDATA"
cp -r "$BACKUPS_DIR/ppsspp/PPSSPP_STATE/." "$PPSSPP_PSP_DIR/PPSSPP_STATE"
cp $BACKUPS_DIR/ppsspp/SYSTEM/ppsspp_retroachievements.dat $PPSSPP_PSP_DIR/SYSTEM/

