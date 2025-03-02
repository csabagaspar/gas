#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/cache

#RETROARCH
#===================================================================================
for CORE in "${RA_CORES[@]}"; do
  if [ ! -f "$CACHE/${CORE}.so.zip" ]; then
    curl "$RA_CORES_DOWNLOAD_URL/${CORE}.so.zip" --output "$CACHE/${CORE}.so.zip"
  fi
done

#bios and system files
if [ ! -f "$CACHE/$RA_SYSTEM_FILE" ]; then
  curl -L $RA_SYSTEM_DONWLOAD_URL -o $CACHE/$RA_SYSTEM_FILE
fi

#mame
if [ ! -f "$CACHE/$RA_MAME2010_CHEAT" ]; then
  wget -O "$CACHE/$RA_MAME2010_CHEAT" "$RA_MAME2010_CHEAT_DOWNLOAD_URL"
fi
if [ ! -f "$CACHE/$RA_MAME2010_HISCORE" ]; then
  wget -O "$CACHE/$RA_MAME2010_HISCORE" "$RA_MAME2010_HISCORE_DOWNLOAD_URL"
fi
if [ ! -f "$CACHE/$RA_MAME2010_HISTORY" ]; then
  wget -O "$CACHE/$RA_MAME2010_HISTORY" "$RA_MAME2010_HISTORY_DOWNLOAD_URL"
fi
if [ ! -f "$CACHE/$RA_MAME2010_CATVER" ]; then
  wget -O "$CACHE/$RA_MAME2010_CATVER" "$RA_MAME2010_CATVER_DOWNLOAD_URL"
fi

#FRONTENDS
#===================================================================================
#es-de
if [ ! -f "$CACHE/$ES_DE_APP_NAME" ]; then
  curl "$ES_DE_DOWNLOAD_URL" --output "$CACHE/$ES_DE_APP_NAME"
fi

#EMULATORS
#===================================================================================
#ppsspp
if [ ! -f "$CACHE/$PPSSPP_CHEAT_DB_NAME" ]; then
  curl "$PPSSPP_CHEAT_DOWNLOAD_URL" --output "$CACHE/$PPSSPP_CHEAT_DB_NAME"
fi
#ppsspp texture packs
#from https://superostrich.xyz/
#if [ ! -f "$CACHE/ac3d-hd-texture-pack-v.0.9.2b-superostrich.zip" ]; then
#  wget -P "$CACHE" "https://drive.usercontent.google.com/download?id=1zthUs7Cj4ShvEffe-QZMqPACUOlv4KVf&export=download&authuser=0"
#fi

#cemu grafic pack
if [ ! -f "$CACHE/$CEMU_GRAPHIC_PACKS_LATEST" ]; then
  wget -P "$CACHE" $CEMU_GRAPHIC_PACKS_DOWNLOAD_URL
fi

#yuzu
if [ ! -f "$CACHE/$YUZU_FIRMWARE_FILE" ]; then
  curl -L $YUZU_FIRMWARE_DONWLOAD_URL -o $CACHE/$YUZU_FIRMWARE_FILE
fi
if [ ! -f "$CACHE/$YUZU_MAIN_LATEST" ]; then
  wget -O "$CACHE/$YUZU_MAIN_LATEST" "$YUZU_MAIN_LATEST_DOWNLOAD_URL"
fi

#duckstation
if [ ! -f "$CACHE/$DUCK_BIOS_NAME" ]; then
  wget -O "$CACHE/$DUCK_BIOS_NAME" "$DUCK_BIOS_DOWNLOAD_URL"
fi

#pcsx2
if [ ! -f "$CACHE/$PCSX2_BIOS_NAME" ]; then
  wget -O "$CACHE/$PCSX2_BIOS_NAME" "$PCSX2_BIOS_DOWNLOAD_URL"
fi

#TOOLS
#===================================================================================
#decky loader
if [ ! -f "$CACHE/$DECKY_LOADER" ]; then
  wget -O "$CACHE/$DECKY_LOADER" "$DECKY_LOADER_DOWNLOAD_URL"
fi

