#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
PPSSPP_BACKUP=$CURRENT_ABSOLUTE_DIR/../../backups/ppsspp

rm -rf $PPSSPP_BACKUP/

mkdir -p $PPSSPP_BACKUP/
mkdir -p $PPSSPP_BACKUP/SAVEDATA
mkdir -p $PPSSPP_BACKUP/PPSSPP_STATE
mkdir -p $PPSSPP_BACKUP/SYSTEM

cp -r $PPSSPP_PSP_DIR/SAVEDATA $PPSSPP_BACKUP
cp -r $PPSSPP_PSP_DIR/PPSSPP_STATE $PPSSPP_BACKUP
cp $PPSSPP_PSP_DIR/SYSTEM/ppsspp_retroachievements.dat $PPSSPP_BACKUP/SYSTEM/ppsspp_retroachievements.dat
