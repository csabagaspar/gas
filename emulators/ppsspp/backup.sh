#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

BACKUPS=$CURRENT_ABSOLUTE_DIR/../../backups

rm -rf $BACKUPS/ppsspp

mkdir -p $BACKUPS/ppsspp
#mkdir -p $BACKUPS/ppsspp/SAVEDATA
#mkdir -p $BACKUPS/ppsspp/PPSSPP_STATE

cp -r $PPSSPP_PSP_DIR/SAVEDATA $BACKUPS/ppsspp
cp -r $PPSSPP_PSP_DIR/PPSSPP_STATE $BACKUPS/ppsspp

mkdir -p $BACKUPS/ppsspp/SYSTEM
cp $PPSSPP_PSP_DIR/SYSTEM/ppsspp_retroachievements.dat $BACKUPS/ppsspp/SYSTEM/ppsspp_retroachievements.dat

