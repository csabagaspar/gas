#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

flatpak uninstall org.duckstation.DuckStation
rm $APPS_DIR/duck.sh
rm -rf $DUCK_DIR

