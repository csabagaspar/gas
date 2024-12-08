#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp -r "$BACKUPS_DIR/lime3ds/lime3ds-emu/." "$LIME3DS_DIR/config/lime3ds-emu"
