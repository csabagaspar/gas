#!/bin/bash
#
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

#Copy image
flatpak install --user flathub org.duckstation.DuckStation
flatpak update --user org.duckstation.DuckStation

#duck.sh
mkdir -p $APPS_DIR
cp $CURRENT_ABSOLUTE_DIR/configs/duck.sh $APPS_DIR

mkdir -p $DUCK_DIR/config/duckstation/bios
unzip $CACHE/$DUCK_BIOS_NAME -d $DUCK_DIR/config/duckstation/bios

cp $CURRENT_ABSOLUTE_DIR/configs/settings.$SYSTEM.ini $DUCK_DIR/config/duckstation
mv $DUCK_DIR/config/duckstation/settings.$SYSTEM.ini $DUCK_DIR/config/duckstation/settings.ini

