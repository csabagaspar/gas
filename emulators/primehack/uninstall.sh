#!/bin/bash
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak uninstall io.github.shiiion.primehack
rm $APPS_DIR/primehack.sh
rm -rf $PRIMEHACK_DIR
