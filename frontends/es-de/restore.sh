#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp -r "$BACKUPS_DIR/es-de/downloaded_media/." "$ES_DE_DIR/downloaded_media"
cp -r "$BACKUPS_DIR/es-de/gamelists/." "$ES_DE_DIR/gamelists"
cp -r "$BACKUPS_DIR/es-de/collections/." "$ES_DE_DIR/collections"
cp -r "$BACKUPS_DIR/es-de/settings/." "$ES_DE_DIR/settings"
