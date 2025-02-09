#!/bin/bash
#

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

#install
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub com.valvesoftware.Steam
flatpak update --user com.valvesoftware.Steam

if [[ "$SYSTEM" == "steamdeck" ]]; then
  #controllers
  mkdir -p $STEAM_CONTROLLER_TEMPLATES_DIR
  cp -r "$CURRENT_ABSOLUTE_DIR/configs/controller_base/." $STEAM_CONTROLLER_TEMPLATES_DIR

  #controllers icons
  mkdir -p $STEAM_TENFOOT_BINDING_ICONS_DIR
  cp -r "$CURRENT_ABSOLUTE_DIR/files/binding_icons/." $STEAM_TENFOOT_BINDING_ICONS_DIR
fi
