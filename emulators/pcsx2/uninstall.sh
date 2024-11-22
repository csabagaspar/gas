#!/bin/bash
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak uninstall net.pcsx2.PCSX2
rm $APPS_DIR/pcsx2.sh
rm -rf $PCSX2_DIR
