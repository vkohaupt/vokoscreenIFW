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
#export QT_QPA_PLATFORM_PLUGIN_PATH=${ROOTDIR}/platforms
export QT_PLUGIN_PATH=${ROOTDIR}/plugins
export GST_PLUGIN_PATH="${ROOTDIR}"/lib
export GSTREAMER_1_0_ROOT_X86="${ROOTDIR}"/lib
export GST_PLUGIN_SYSTEM_PATH_1_0="${ROOTDIR}"/lib
exec "$ROOTDIR"/vokoscreenNG $1
