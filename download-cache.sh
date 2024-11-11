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


#fbneo
if [ ! -f "$CACHE/$RA_FBNEO_SYSTEM" ]; then
  curl -L $RA_FBNEO_SYSTEM_DONWLOAD_URL -o $CACHE/$RA_FBNEO_SYSTEM
fi

if [ ! -f "$CACHE/$RA_FBNEO_SHADERS" ]; then
  wget -O "$CACHE/$RA_FBNEO_SHADERS" "$RA_FBNEO_SHADERS_DONWLOAD_URL"
fi

#opera
if [ ! -f "$CACHE/$RA_OPERA_SYSTEM" ]; then
  wget -O "$CACHE/$RA_OPERA_SYSTEM" "$RA_OPERA_SYSTEM_DONWLOAD_URL"
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


#===================================================================================
#es-de
if [ ! -f "$CACHE/$ES_DE_APP_NAME" ]; then
  curl "$ES_DE_DOWNLOAD_URL" --output "$CACHE/$ES_DE_APP_NAME"
fi
if [ ! -f "$CACHE/$ES_DE_THEME" ]; then
  wget -O "$CACHE/$ES_DE_THEME" "$ES_DE_THEME_DOWNLOAD_URL"
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



