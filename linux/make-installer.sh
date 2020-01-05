#!/bin/bash

# Debugmodus
# set -x

# Bricht das Script bei einem Fehler ab
# set -e 

# Version von vokoscreenNG
version="3.0.0"
installerName="Installer-vokoscreenNG-"$version"-linux.run"
qtPath="/home/vk/Qt5.12.3/5.12.3/gcc_64/"
buildPath="/home/vk/Programmieren/vokoscreenNG/build-vokoscreenNG-Desktop_Qt_5_12_3_GCC_64bit-Release"

rm $installerName

lib=$qtPath"/lib/"
rm -r ./packages/root/data/lib
mkdir ./packages/root/data/lib

# Option -d kopiert Softlinks
cp -d $lib* ./packages/root/data/lib
rm ./packages/root/data/lib/*.a
rm ./packages/root/data/lib/*.prl

plugins=$qtPath"/plugins/"
rm -r ./packages/root/data/plugins
mkdir ./packages/root/data/plugins
cp -r $plugins* ./packages/root/data/plugins

translations=$qtPath"/translations/"
rm -r ./packages/root/data/translations
mkdir ./packages/root/data/translations
cp -r $translations*".qm" ./packages/root/data/translations

rm ./packages/root/data/vokoscreenNG
cp $buildPath/vokoscreenNG ./packages/root/data

cp /usr/lib64/gstreamer-1.0/* ./packages/root/data/lib


/home/vk/Qt/QtIFW-3.1.1/bin/binarycreator --offline-only \
                                          -c config/config.xml \
                                          -p packages $installerName
