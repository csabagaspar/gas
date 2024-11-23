#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp -r "$BACKUPS_DIR/pcsx2/memcards/." "$PCSX2_DIR/config/PCSX2/memcards"
cp -r "$BACKUPS_DIR/pcsx2/sstates/." "$PCSX2_DIR/config/PCSX2/sstates"
cp -r "$BACKUPS_DIR/pcsx2/snaps/." "$PCSX2_DIR/config/PCSX2/snaps"
cp -r "$BACKUPS_DIR/pcsx2/inis/." "$PCSX2_DIR/config/PCSX2/inis"
