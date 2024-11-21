#!/bin/bash
./frontends/retroarch/uninstall.sh
./frontends/es-de/uninstall.sh
./frontends/lutris/uninstall.sh

./emulators/yuzu/uninstall.sh
./emulators/ppsspp/uninstall.sh
./emulators/cemu/uninstall.sh

if [[ "$SYSTEM" == "steamdeck" ]]; then
  ./frontends/steam/uninstall.sh
fi
