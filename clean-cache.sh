#!/bin/bash
#
CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/vars.env
CACHE=$CURRENT_ABSOLUTE_DIR/cache

#retroarch cores
for CORE in "${RA_CORES[@]}"; do
  rm "$CACHE/${CORE}.so.zip"
done
rm "$CACHE/$RA_SCUMMVM_FILE"
rm "$CACHE/$RA_FINAL_BURN_NEO"
rm "$CACHE/$RA_MAME"


#es-de AppImage
rm $CACHE/$ES_DE_APP_NAME

#ppsspp cheat.db
rm $CACHE/$PPSSPP_CHEAT_DB_NAME

#cemu
rm $CACHE/$CEMU_APP_NAME

#cemu-graphicPacks
rm $CACHE/$CEMU_GRAPHIC_PACKS_LATEST

#yuzu
rm $CACHE/$YUZU_APP_NAME
rm $CACHE/$YUZU_FIRMWARE_FILE
