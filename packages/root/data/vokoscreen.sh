#!/bin/sh

rootdir() {
    case "$1" in
        /*) dirname "$1"
            ;;
        *)  dir=$(dirname "$PWD/$1")
            cwd=$PWD
            cd "$dir" 1>/dev/null
                echo $PWD
            cd "$cwd" 1>/dev/null
            ;;
    esac
}

ROOTDIR=$(rootdir "$0")
export LD_LIBRARY_PATH="${ROOTDIR}"/lib:$LD_LIBRARY_PATH
export QT_QPA_PLATFORM_PLUGIN_PATH=${ROOTDIR}/platforms
export QT_PLUGIN_PATH=${ROOTDIR}/plugins
exec $ROOTDIR/vokoscreen
