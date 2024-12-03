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

#mgba
if [ ! -f "$CACHE/$RA_MGBA_SYSTEM" ]; then
  wget -O "$CACHE/$RA_MGBA_SYSTEM" "$RA_MGBA_SYSTEM_DONWLOAD_URL"
fi

#ep128emu
if [ ! -f "$CACHE/$RA_EP128EMU_SYSTEM" ]; then
  wget -O "$CACHE/$RA_EP128EMU_SYSTEM" "$RA_EP128EMU_SYSTEM_DOWNLOAD_URL"
fi
#colecovision
if [ ! -f "$CACHE/$RA_GEARCOLECO_SYSTEM" ]; then
  wget -O "$CACHE/$RA_GEARCOLECO_SYSTEM" "$RA_GEARCOLECO_SYSTEM_DOWNLOAD_URL"
fi
#commodore-vice
if [ ! -f "$CACHE/$RA_COMMODORE_VICE_SYSTEM" ]; then
  wget -O "$CACHE/$RA_COMMODORE_VICE_SYSTEM" "$RA_COMMODORE_VICE_SYSTEM_DOWNLOAD_URL"
fi
#segacd
if [ ! -f "$CACHE/$RA_SEGACD_SYSTEM" ]; then
  wget -O "$CACHE/$RA_SEGACD_SYSTEM" "$RA_SEGACD_SYSTEM_DOWNLOAD_URL"
fi
#puae
if [ ! -f "$CACHE/$RA_PUAE_SYSTEM" ]; then
  wget -O "$CACHE/$RA_PUAE_SYSTEM" "$RA_PUAE_SYSTEM_DOWNLOAD_URL"
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
#===================================================================================
#duckstation
if [ ! -f "$CACHE/$DUCK_BIOS_NAME" ]; then
  wget -O "$CACHE/$DUCK_BIOS_NAME" "$DUCK_BIOS_DOWNLOAD_URL"
fi
#===================================================================================
#pcsx2
if [ ! -f "$CACHE/$PCSX2_BIOS_NAME" ]; then
  wget -O "$CACHE/$PCSX2_BIOS_NAME" "$PCSX2_BIOS_DOWNLOAD_URL"
fi

