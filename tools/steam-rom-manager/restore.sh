#!/bin/bash
j
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

cp "$BACKUPS_DIR/steam-rom-manager/userConfigurations.json" $STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/
cp "$BACKUPS_DIR/steam-rom-manager/userExceptions.json" $STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/
cp "$BACKUPS_DIR/steam-rom-manager/userVariables.json" $STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/
cp "$BACKUPS_DIR/steam-rom-manager/userSettings.json" $STEAM_ROM_MANAGER_DIR/config/steam-rom-manager/userData/
