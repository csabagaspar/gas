#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/cache

#retroarch cores
for CORE in "${RA_CORES[@]}"; do
  if [ ! -f "$CACHE/$CORE.so.zip" ]; then
    curl "$RA_CORES_DOWNLOAD_URL/$CORE.so.zip" --output "$CACHE/${CORE}.so.zip"
  fi
done
if [ ! -f "$CACHE/$RA_SCUMMVM_FILE" ]; then
  curl "$RA_SCUMMVM_DOWNLOAD_URL/$RA_SCUMMVM_FILE" --output "$CACHE/$RA_SCUMMVM_FILE"
fi
if [ ! -f "$CACHE/$RA_FINAL_BURN_NEO" ]; then
  wget -P "$CACHE" $RA_SYSTEMS_DOWNLOAD_URL/$RA_FINAL_BURN_NEO
fi
if [ ! -f "$CACHE/$RA_MAME" ]; then
  wget -P "$CACHE" $RA_SYSTEMS_DOWNLOAD_URL/$RA_MAME
fi

#es-de
if [ ! -f "$CACHE/$ES_DE_APP_NAME" ]; then
  curl "$ES_DE_DOWNLOAD_URL" --output "$CACHE/$ES_DE_APP_NAME"
fi

#ppsspp
if [ ! -f "$CACHE/$PPSSPP_CHEAT_DB_NAME" ]; then
  curl "$PPSSPP_CHEAT_DOWNLOAD_URL" --output "$CACHE/$PPSSPP_CHEAT_DB_NAME"
fi

#cemu
if [ ! -f "$CACHE/$CEMU_APP_NAME" ]; then
  wget -P "$CACHE" $CEMU_DONWLOAD_URL
fi
if [ ! -f "$CACHE/$CEMU_GRAPHIC_PACKS_LATEST" ]; then
  wget -P "$CACHE" $CEMU_GRAPHIC_PACKS_DOWNLOAD_URL
fi

#yuzu
if [ ! -f "$CACHE/$YUZU_FIRMWARE_FILE" ]; then
  wget -P "$CACHE" $YUZU_DOWNLOAD_URL/$YUZU_FIRMWARE_FILE
fi
if [ ! -f "$CACHE/$YUZU_APP_NAME" ]; then
  wget -P "$CACHE" $YUZU_DOWNLOAD_URL/$YUZU_APP_NAME
fi

