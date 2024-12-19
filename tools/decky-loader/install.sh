#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

mkdir -p $APPS_DIR
cp $CACHE/$DECKY_LOADER $APPS_DIR
chmod a+x $APPS_DIR/$DECKY_LOADER

$APPS_DIR/$DECKY_LOADER
