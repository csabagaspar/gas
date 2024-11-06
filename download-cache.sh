#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/cache

#===================================================================================
#retroarch cores
for CORE in "${RA_CORES[@]}"; do
  if [ ! -f "$CACHE/$CORE.so.zip" ]; then
    curl "$RA_CORES_DOWNLOAD_URL/$CORE.so.zip" --output "$CACHE/${CORE}.so.zip"
  fi
done

#scummvm
if [ ! -f "$CACHE/$RA_SCUMMVM_FILE" ]; then
  curl "$RA_SCUMMVM_DOWNLOAD_URL/$RA_SCUMMVM_FILE" --output "$CACHE/$RA_SCUMMVM_FILE"
fi

#
if [ ! -f "$CACHE/$RA_FINAL_BURN_NEO" ]; then
  wget -P "$CACHE" $RA_SYSTEMS_DOWNLOAD_URL/$RA_FINAL_BURN_NEO
fi
if [ ! -f "$CACHE/$RA_MAME" ]; then
  wget -P "$CACHE" $RA_SYSTEMS_DOWNLOAD_URL/$RA_MAME
fi

#fbneo
if [ ! -f "$CACHE/$RA_FBNEO_BIOS" ]; then
  wget -O "$CACHE/$RA_FBNEO_BIOS" "$RA_FBNEO_BIOS_DONWLOAD_URL"
fi
if [ ! -f "$CACHE/$RA_FBNEO_SAMPLES" ]; then
  curl -L $RA_FBNEO_SAMPLES_DONWLOAD_URL -o $CACHE/$RA_FBNEO_SAMPLES
fi

if [ ! -f "$CACHE/$RA_FBNEO_CHEATS" ]; then
  wget -O "$CACHE/$RA_FBNEO_CHEATS" "$RA_FBNEO_CHEATS_DONWLOAD_URL"
fi

if [ ! -f "$CACHE/$RA_FBNEO_HISTORY" ]; then
  wget -O "$CACHE/$RA_FBNEO_HISTORY" "$RA_FBNEO_HISTORY_DONWLOAD_URL"
fi

if [ ! -f "$CACHE/$RA_FBNEO_HISCORE" ]; then
  wget -O "$CACHE/$RA_FBNEO_HISCORE" "$RA_FBNEO_HISCORE_DONWLOAD_URL"
fi

#opera
if [ ! -f "$CACHE/$RA_OPERA_BIOS" ]; then
  wget -O "$CACHE/$RA_OPERA_BIOS" "$RA_OPERA_BIOS_DONWLOAD_URL"
fi


#===================================================================================
#es-de
if [ ! -f "$CACHE/$ES_DE_APP_NAME" ]; then
  curl "$ES_DE_DOWNLOAD_URL" --output "$CACHE/$ES_DE_APP_NAME"
fi

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

#===================================================================================
#cemu
if [ ! -f "$CACHE/$CEMU_APP_NAME" ]; then
  wget -P "$CACHE" $CEMU_DONWLOAD_URL
fi
if [ ! -f "$CACHE/$CEMU_GRAPHIC_PACKS_LATEST" ]; then
  wget -P "$CACHE" $CEMU_GRAPHIC_PACKS_DOWNLOAD_URL
fi

#===================================================================================
#yuzu
if [ ! -f "$CACHE/$YUZU_FIRMWARE_FILE" ]; then
  curl -L $YUZU_FIRMWARE_DONWLOAD_URL -o $CACHE/$YUZU_FIRMWARE_FILE
fi
if [ ! -f "$CACHE/$YUZU_MAIN_LATEST" ]; then
  wget -O "$CACHE/$YUZU_MAIN_LATEST" "$YUZU_MAIN_LATEST_DOWNLOAD_URL"
fi



