#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak install --user com.github.Matoking.protontricks
flatpak update --user com.github.Matoking.protontricks
