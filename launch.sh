#!/bin/bash
exec "$STEAM_RUNTIME/scripts/switch-runtime.sh" --runtime="" -- "${@:2}"
