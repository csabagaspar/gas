#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

rm -rf $BACKUPS_DIR/steam-rom-manager
mkdir -p $BACKUPS_DIR/steam-rom-manager

cp "$STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/userConfigurations.json" $BACKUPS_DIR/steam-rom-manager/
cp "$STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/userExceptions.json" $BACKUPS_DIR/steam-rom-manager/
cp "$STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/userVariables.json" $BACKUPS_DIR/steam-rom-manager/
cp "$STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/userSettings.json" $BACKUPS_DIR/steam-rom-manager/
