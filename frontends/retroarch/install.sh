#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/../../vars.env

CACHE=$CURRENT_ABSOLUTE_DIR/../../cache

#install
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.libretro.RetroArch
flatpak update --user org.libretro.RetroArch

#dirs
mkdir -p $RA_CONFIG_DIR
mkdir -p $RA_CORES_DIR
mkdir -p $RA_SYSTEM_DIR

#ra.sh
cp $CURRENT_ABSOLUTE_DIR/configs/ra.sh $APPS_DIR

#scummvm_custom.sh
cp $CURRENT_ABSOLUTE_DIR/configs/scummvm_custom.sh $APPS_DIR

#retroarch.cfg
cp $CURRENT_ABSOLUTE_DIR/configs/retroarch.$SYSTEM.cfg $RA_CONFIG_DIR
mv $RA_CONFIG_DIR/retroarch.$SYSTEM.cfg $RA_CONFIG_DIR/retroarch.cfg

#retroarch-core-options.cfg
cp $CURRENT_ABSOLUTE_DIR/configs/retroarch-core-options.cfg $RA_CONFIG_DIR

#scummvm.ini
cp $CURRENT_ABSOLUTE_DIR/configs/scummvm.$SYSTEM.ini $RA_SYSTEM_DIR
mv $RA_SYSTEM_DIR/scummvm.$SYSTEM.ini $RA_SYSTEM_DIR/scummvm.ini

#system and bios
#scummvm
unzip -q -o "$CACHE/$RA_SCUMMVM_FILE" -d "$RA_SYSTEM_DIR"
#fbneo
unzip -q -o "$CACHE/$RA_FBNEO_SYSTEM" -d "$RA_SYSTEM_DIR/fbneo"
mkdir -p "$RA_CONFIG_DIR/shaders"
unzip -q -o "$CACHE/$RA_FBNEO_SHADERS" -d "$RA_CONFIG_DIR/shaders/fbneo"
unzip -q -o "$CURRENT_ABSOLUTE_DIR/files/fbneo-blend.zip" -d "$RA_SYSTEM_DIR/fbneo"

#opera
unzip -q -o "$CACHE/$RA_OPERA_SYSTEM" -d "$RA_SYSTEM_DIR/opera"



#cores
for CORE in "${RA_CORES[@]}"; do
  unzip -q -o "$CACHE/$CORE.so.zip" -d "$RA_CORES_DIR"
done

#mame.ini
#cp $CURRENT_ABSOLUTE_DIR/configs/mame.$SYSTEM.ini $RA_SYSTEM_DIR/mame/ini
#mv $RA_SYSTEM_DIR/mame/ini/mame.$SYSTEM.ini $RA_SYSTEM_DIR/mame/ini/mame.ini
