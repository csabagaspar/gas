#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/vars.env

./frontends/retroarch/uninstall.sh
./frontends/es-de/uninstall.sh
./frontends/lutris/uninstall.sh

./emulators/yuzu/uninstall.sh
./emulators/ppsspp/uninstall.sh
./emulators/cemu/uninstall.sh
./emulators/duckstation/uninstall.sh
./emulators/pcsx2/uninstall.sh
./emulators/dolphin/uninstall.sh

if [[ "$SYSTEM" == "steamdeck" ]]; then
  ./frontends/steam/uninstall.sh
fi
