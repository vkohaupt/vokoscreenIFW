#!/bin/bash

# Debugmodus
# set -x

# Bricht das Script bei einem Fehler ab
# set -e 

#set -u
# ????

# Begin copy libs for ffmpeg
rm ./packages/root/data/bin/ffmpeg
cp /usr/bin/ffmpeg ./packages/root/data/bin/ffmpeg

rm -rf ./packages/root/data/lib
mkdir  ./packages/root/data/lib

ldd ./packages/root/data/bin/ffmpeg | grep "/usr/" | sed 's/^[ \t]*//' | cut -d" " -f3 > libs.txt

count=$(cat libs.txt | wc -l)

for((i=1; i<$count+1; i++))
do
   # Zeile für Zeile aulesen
   libfile=$(sed -n "$i"p libs.txt)
   echo $libfile
   cp $libfile ./packages/root/data/lib
done

rm libs.txt

# End copy libs for ffmpeg

prefix_Qt="/home/vk/Qt5.9.0/5.9/gcc_64/lib/"
# Option -d kopiert Softlinks
cp -d $prefix_Qt*".so."* ./packages/root/data/lib

prefix_Plugins="/home/vk/Qt5.9.0/5.9/gcc_64/plugins/"
rm -r ./packages/root/data/plugins
mkdir ./packages/root/data/plugins
cp -r $prefix_Plugins* ./packages/root/data/plugins

prefix_DIVERSES="/usr/lib64/"
cp -d $prefix_DIVERSES"libv4l"*       ./packages/root/data/lib
cp -d $prefix_DIVERSES"libjpeg.so.8"* ./packages/root/data/lib



name="vokoscreenRUN-installer"

/home/vk/Qt/QtIFW2.0.5/bin/binarycreator --offline-only \
                                         -c config/config.xml \
                                         -p packages $name

version=$(cat ../vokoscreen/VERSION | grep Version | cut -d"=" -f2)
tar cvfz "vokoscreenRUN-x64-"$version"-beta.tar.gz" ./$name
