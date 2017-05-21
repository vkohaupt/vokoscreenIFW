#!/bin/bash

ls -R > files.txt

/home/vk/Qt/QtIFW2.0.5/bin/binarycreator --offline-only \
                                         -c config/config.xml \
                                         -p packages Setup
 
