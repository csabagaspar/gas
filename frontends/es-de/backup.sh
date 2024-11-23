#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/es-de
mkdir -p $BACKUPS_DIR/es-de

cp -r "$ES_DE_DIR/downloaded_media/." $BACKUPS_DIR/es-de/downloaded_media
cp -r "$ES_DE_DIR/gamelists/." $BACKUPS_DIR/es-de/gamelists
cp -r "$ES_DE_DIR/collections/." $BACKUPS_DIR/es-de/collections
cp -r "$ES_DE_DIR/settings/." $BACKUPS_DIR/es-de/settings
