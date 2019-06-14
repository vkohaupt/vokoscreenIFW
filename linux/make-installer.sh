#!/bin/bash

# Debugmodus
# set -x

# Bricht das Script bei einem Fehler ab
# set -e 

# Version von vokoscreenNG
version="3.0.0"
qt="/home/vk/Qt5.12.3/5.12.3/gcc_64/"

lib=$qt"/lib/"
rm -r ./packages/root/data/lib
mkdir ./packages/root/data/lib

# Option -d kopiert Softlinks
cp -d $lib*".so."* ./packages/root/data/lib

plugins=$qt"/plugins/"
rm -r ./packages/root/data/plugins
mkdir ./packages/root/data/plugins
cp -r $plugins* ./packages/root/data/plugins

prefix_DIVERSES="/usr/lib64/"
cp -d $prefix_DIVERSES"libv4l"*       ./packages/root/data/lib
cp -d $prefix_DIVERSES"libjpeg.so.8"* ./packages/root/data/lib


name="Installer-vokoscreenNG-linux-"$version".run"

/home/vk/Qt/QtIFW-3.1.1/bin/binarycreator --offline-only \
                                          -c config/config.xml \
                                          -p packages $name
