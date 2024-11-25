#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak uninstall net.davidotek.pupgui2
rm -rf $PROTON_UP_QT_DIR
