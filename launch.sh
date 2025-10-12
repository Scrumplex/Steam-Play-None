#!/bin/bash

# Taken from
# https://github.com/ValveSoftware/steam-runtime/blob/12c886a53ec403cd8a7ba394ba30a8e956fb77d8/templates/scripts/switch-runtime.sh#L39-L81
undo_steamrt () {
    # Undo the Steam Runtime environment, but only if it's already in use.
    case "${STEAM_RUNTIME-}" in
        (/*)
            ;;
        (*)
            return
            ;;
    esac

    local default_path="/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
    unset LD_LIBRARY_PATH

    # Try not to fall back to the default_path if we don't have to
    case ":$PATH:" in
        (*:$STEAM_RUNTIME*)
            export PATH="$default_path"
            ;;
    esac

    case "$STEAM_ZENITY" in
        ($STEAM_RUNTIME/*)
            unset STEAM_ZENITY
            ;;
    esac

    unset STEAM_RUNTIME

    if [ -n "${SYSTEM_LD_LIBRARY_PATH+set}" ]; then
        export LD_LIBRARY_PATH="$SYSTEM_LD_LIBRARY_PATH"
    fi

    if [ -n "${SYSTEM_PATH+set}" ]; then
        export PATH="$SYSTEM_PATH"
    fi

    # Removing the Steam Runtime from the PATH might have eliminated our
    # ability to run zenity via PATH search, if the host system doesn't
    # have it
    if [ "${STEAM_ZENITY-}" = zenity ] && ! command -v zenity >/dev/null; then
        unset STEAM_ZENITY
    fi
}

undo_steamrt
exec "${@:2}"
