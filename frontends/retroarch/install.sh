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
mkdir -p $APPS_DIR
mkdir -p $RA_CONFIG_DIR
mkdir -p $RA_CORES_DIR
mkdir -p $RA_SYSTEM_DIR

#scummvm_custom.sh
cp $CURRENT_ABSOLUTE_DIR/configs/scummvm_custom.sh $APPS_DIR

#CONFIGS
#retroarch.cfg
cp $CURRENT_ABSOLUTE_DIR/configs/retroarch.$SYSTEM.cfg $RA_CONFIG_DIR
mv $RA_CONFIG_DIR/retroarch.$SYSTEM.cfg $RA_CONFIG_DIR/retroarch.cfg

#retroarch-core-options.cfg
cp $CURRENT_ABSOLUTE_DIR/configs/retroarch-core-options.cfg $RA_CONFIG_DIR

#SYSTEM
#scummvm and scummvm.ini
unzip -q -o "$CACHE/$RA_SCUMMVM_FILE" -d "$RA_SYSTEM_DIR"
cp $CURRENT_ABSOLUTE_DIR/configs/scummvm.$SYSTEM.ini $RA_SYSTEM_DIR
mv $RA_SYSTEM_DIR/scummvm.$SYSTEM.ini $RA_SYSTEM_DIR/scummvm.ini

#fbneo
unzip -q -o "$CACHE/$RA_FBNEO_SYSTEM" -d "$RA_SYSTEM_DIR/fbneo"
mkdir -p "$RA_CONFIG_DIR/shaders"
unzip -q -o "$CACHE/$RA_FBNEO_SHADERS" -d "$RA_CONFIG_DIR/shaders/fbneo"
unzip -q -o "$CURRENT_ABSOLUTE_DIR/files/fbneo-blend.zip" -d "$RA_SYSTEM_DIR/fbneo"

#opera (should be the system directory)
unzip -q -o "$CACHE/$RA_OPERA_SYSTEM" -d "$RA_SYSTEM_DIR"

#mgba (should be the system directory)
unzip -q -o "$CACHE/$RA_MGBA_SYSTEM" -d "$RA_SYSTEM_DIR"

#mame2010
mkdir -p "$RA_SYSTEM_DIR/mame2010/ini"
cp $CURRENT_ABSOLUTE_DIR/configs/mame2010.ini $RA_SYSTEM_DIR/mame2010/ini/mame.ini
cp $CACHE/$RA_MAME2010_CHEAT $RA_SYSTEM_DIR/mame2010/cheat.zip
cp $CACHE/$RA_MAME2010_HISCORE $RA_SYSTEM_DIR/mame2010/hiscore.dat
cp $CACHE/$RA_MAME2010_HISTORY $RA_SYSTEM_DIR/mame2010/
cp $CACHE/$RA_MAME2010_CATVER $RA_SYSTEM_DIR/mame2010/

#ep128emu
mkdir -p $RA_SYSTEM_DIR/ep128emu/roms
mkdir -p $RA_SYSTEM_DIR/ep128emu/config
unzip -q -o "$CACHE/$RA_EP128EMU_SYSTEM" -d "$RA_SYSTEM_DIR/ep128emu/roms"
cp $CURRENT_ABSOLUTE_DIR/configs/tvc.ep128cfg $RA_SYSTEM_DIR/ep128emu/config

#CORE
for CORE in "${RA_CORES[@]}"; do
  unzip -q -o "$CACHE/$CORE.so.zip" -d "$RA_CORES_DIR"
done
