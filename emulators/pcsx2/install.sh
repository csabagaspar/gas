#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

#install
flatpak install --user flathub net.pcsx2.PCSX2
flatpak update --user net.pcsx2.PCSX2

#dirs
mkdir -p $APPS_DIR

#pcsx2.sh
cp $CURRENT_ABSOLUTE_DIR/configs/pcsx2.sh $APPS_DIR

#
mkdir -p $PCSX2_DIR/config/PCSX2/bios
unzip $CACHE/$PCSX2_BIOS_NAME -d $PCSX2_DIR/config/PCSX2/bios

mkdir -p $PCSX2_DIR/config/PCSX2/inis
cp $CURRENT_ABSOLUTE_DIR/configs/PCSX2.$SYSTEM.ini $PCSX2_DIR/config/PCSX2/inis/
mv $PCSX2_DIR/config/PCSX2/inis/PCSX2.$SYSTEM.ini $PCSX2_DIR/config/PCSX2/inis/PCSX2.ini

