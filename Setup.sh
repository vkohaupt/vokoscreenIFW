#!/bin/bash

/home/vk/Qt/QtIFW2.0.5/bin/binarycreator --offline-only \
                                         -c config/config.xml \
                                         -p packages Setup
 
version=$(cat ../vokoscreen/VERSION | grep Version | cut -d"=" -f2)
tar cvfz "vokoscreen-x64-"$version"-beta.tar.gz" ./Setup
