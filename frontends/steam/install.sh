#!/bin/bash
#

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

if [[ "$SYSTEM" == "steamdeck" ]]; then
  #controllers icons
  mkdir -p $STEAM_CONTROLLER_TEMPLATES_DIR
  cp -r "$CURRENT_ABSOLUTE_DIR/configs/controller_base/." $STEAM_CONTROLLER_TEMPLATES_DIR

  #controllers icons
  mkdir -p $STEAM_TENFOOT_BINDING_ICONS_DIR
  cp -r "$CURRENT_ABSOLUTE_DIR/files/binding_icons/." $STEAM_TENFOOT_BINDING_ICONS_DIR

  #shortcuts icons
  mkdir -p "$STEAM_CONFIG_DIR/grid"
  cp -r "$CURRENT_ABSOLUTE_DIR/files/grid/." "$STEAM_CONFIG_DIR/grid"

  #shortcuts
  #TODO merge
  #cp "$CURRENT_ABSOLUTE_DIR/configs/shortcuts.vdf" "$STEAM_CONFIG_DIR"
fi
