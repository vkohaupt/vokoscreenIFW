#!/bin/bash

name="vokoscreen-installer"

/home/vk/Qt/QtIFW2.0.5/bin/binarycreator --offline-only \
                                         -c config/config.xml \
                                         -p packages $name
 
version=$(cat ../vokoscreen/VERSION | grep Version | cut -d"=" -f2)
tar cvfz "vokoscreen-x64-"$version"-beta.tar.gz" ./$name
