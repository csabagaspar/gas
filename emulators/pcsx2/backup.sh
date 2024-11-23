#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/pcsx2
mkdir -p $BACKUPS_DIR/pcsx2

cp -r "$PCSX2_DIR/config/PCSX2/memcards/." $BACKUPS_DIR/pcsx2/memcards
cp -r "$PCSX2_DIR/config/PCSX2/sstates/." $BACKUPS_DIR/pcsx2/sstates
cp -r "$PCSX2_DIR/config/PCSX2/snaps/." $BACKUPS_DIR/pcsx2/snaps
cp -r "$PCSX2_DIR/config/PCSX2/inis/." $BACKUPS_DIR/pcsx2/inis
