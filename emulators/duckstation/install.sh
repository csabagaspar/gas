#!/bin/bash
#
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

#Copy image
mkdir -p $APPS_DIR
cp $CACHE/$DUCK_APP_NAME $APPS_DIR
chmod a+x $APPS_DIR/$DUCK_APP_NAME

#duck.sh
cp $CURRENT_ABSOLUTE_DIR/configs/duck.sh $APPS_DIR

#~/.local/share/duckstation/bios
mkdir -p $HOME/.local/share/duckstation/bios
unzip $CACHE/$DUCK_BIOS_NAME -d $HOME/.local/share/duckstation/bios

#ini
#~/.config/Cemu/settings.xml
cp $CURRENT_ABSOLUTE_DIR/configs/settings.$SYSTEM.ini $HOME/.local/share/duckstation
mv $HOME/.local/share/duckstation/settings.$SYSTEM.ini $HOME/.local/share/duckstation/settings.ini

