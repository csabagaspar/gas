#!/bin/bash

CURRENT_ABSOLUTE_DIR=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $CURRENT_ABSOLUTE_DIR/vars.env

./frontends/retroarch/install.sh
./frontends/es-de/install.sh
./frontends/lutris/install.sh

./emulators/yuzu/install.sh
./emulators/ppsspp/install.sh
./emulators/cemu/install.sh
./emulators/duckstation/install.sh
./emulators/pcsx2/install.sh
./emulators/dolphin/install.sh

if [[ "$SYSTEM" == "steamdeck" ]]; then
  ./frontends/steam/install.sh
fi
