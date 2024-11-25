#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env


flatpak uninstall net.lutris.Lutris

rm $APPS_DIR/lutris.sh
rm -rf $LUTRIS_DIR
