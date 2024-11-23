#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp -r "$BACKUPS_DIR/duckstation/memcards/." "$DUCK_DIR/config/duckstation/memcards"
cp -r  "$BACKUPS_DIR/duckstation/savestates/." "$DUCK_DIR/config/duckstation/savestates"
cp $BACKUPS_DIR/duckstation/settings.ini "$DUCK_DIR/config/duckstation"
