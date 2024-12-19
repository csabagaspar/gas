#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

$APPS_DIR/$DECKY_LOADER
rm $APPS_DIR/$DECKY_LOADER
