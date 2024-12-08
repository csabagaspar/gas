#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/lime3ds
mkdir -p $BACKUPS_DIR/lime3ds

cp -r "$LIME3DS_DIR/config/lime3ds-emu/." $BACKUPS_DIR/lime3ds/lime3ds-emu
