#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/ppsspp
mkdir -p $BACKUPS_DIR/ppsspp

cp -r "$PPSSPP_PSP_DIR/SAVEDATA/." $BACKUPS_DIR/ppsspp/SAVEDATA
cp -r "$PPSSPP_PSP_DIR/PPSSPP_STATE/." $BACKUPS_DIR/ppsspp/PPSSPP_STATE

mkdir -p $BACKUPS_DIR/ppsspp/SYSTEM
cp $PPSSPP_PSP_DIR/SYSTEM/ppsspp_retroachievements.dat $BACKUPS_DIR/ppsspp/SYSTEM

