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

export QT_PLUGIN_PATH=${ROOTDIR}/plugins

export GSTREAMER_1_0_ROOT_X86="${ROOTDIR}"/gstreamer
export GST_PLUGIN_SYSTEM_PATH_1_0="${ROOTDIR}"/gstreamer
export GST_PLUGIN_PATH="${ROOTDIR}"/gstreamer
export GST_PLUGIN_SCANNER_1_0="${ROOTDIR}"/gstreamer

#export QT_DEBUG_PLUGINS=1
#export GST_DEBUG=2

exec "$ROOTDIR"/vokoscreenNG $1
