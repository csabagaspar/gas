#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/duckstation
mkdir -p $BACKUPS_DIR/duckstation

cp -r "$DUCK_DIR/config/duckstation/memcards/." $BACKUPS_DIR/duckstation/memcards
cp -r "$DUCK_DIR/config/duckstation/savestates/." $BACKUPS_DIR/duckstation/savestates
cp "$DUCK_DIR/config/duckstation/settings.ini" $BACKUPS_DIR/duckstation
