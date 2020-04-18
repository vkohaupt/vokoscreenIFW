#!/bin/sh

# Version von vokoscreenNG
version="3.0.3"
installerName="Installer-vokoscreenNG-"$version"-linux.run"
qtPath="/home/vk/Qt5.9.7/5.9.7/gcc_64/"
buildPath="/home/vk/Programmieren/vokoscreenNG/build-vokoscreenNG-Desktop-Release"

rm $installerName

lib="/usr/lib64/"
rm -r ./packages/root/data/lib
mkdir ./packages/root/data/lib
target="./packages/root/data/lib"

# Option -d kopiert Softlinks
cp -d "$lib"libQt5Core.so* $target
cp -d "$lib"libQt5Gui.so* $target
cp -d "$lib"libQt5Multimedia.so* $target
cp -d "$lib"libQt5MultimediaWidgets.so* $target
cp -d "$lib"libQt5Network.so* $target
cp -d "$lib"libQt5OpenGL.so* $target
cp -d "$lib"libQt5Svg.so* $target
cp -d "$lib"libQt5Widgets.so* $target
cp -d "$lib"libQt5X11Extras.so* $target
cp -d "$lib"libQt5XcbQpa.so* $target
cp -d "$lib"libQt5DBus.so* $target
cp -d "$lib"libQt5Quick.so* $target
cp -d "$lib"libQt5Qml.so* $target
cp -d "$lib"libQt5Xml.so* $target
cp -d "$lib"libQt5TextToSpeech.so* $target

cp -d "$lib"libicui18n.so* $target
cp -d "$lib"libicuuc.so* $target
cp -d "$lib"libicudata.so* $target

cp -d /usr/lib64/libv4l2.so* $target
cp -d /usr/lib64/libv4lconvert.so* $target
cp -d /usr/lib64/libjpeg.so* $target

cp -d /usr/lib64/libva.so* $target
cp -d /usr/lib64/libavcodec.so.* $target
cp -d /usr/lib64/libavfilter.so.* $target
cp -d /usr/lib64/libavformat.so.* $target
cp -d /usr/lib64/libavresample.so.* $target
cp -d /usr/lib64/libavutil.so.* $target

cp -d /usr/lib64/libx264.so* $target

cp -d /usr/lib64/libfaac* $target

# Dies ist fertig
plugins="/usr/lib64/qt5/plugins/"
rm -r ./packages/root/data/plugins
mkdir ./packages/root/data/plugins
cp -r "$plugins"bearer                ./packages/root/data/plugins
cp -r "$plugins"iconengines           ./packages/root/data/plugins
cp -r "$plugins"imageformats          ./packages/root/data/plugins
cp -r "$plugins"mediaservice          ./packages/root/data/plugins
cp -r "$plugins"platforminputcontexts ./packages/root/data/plugins
cp -r "$plugins"platforms             ./packages/root/data/plugins
cp -r "$plugins"xcbglintegrations     ./packages/root/data/plugins


translations=$qtPath"/translations/"
rm -r ./packages/root/data/translations
mkdir ./packages/root/data/translations
cp -r "$translations"qt_??".qm"       ./packages/root/data/translations
cp -r "$translations"qt_??_??".qm"    ./packages/root/data/translations
cp "$translations"qtbase_??.qm        ./packages/root/data/translations
cp "$translations"qtmultimedia_??.qm  ./packages/root/data/translations
cp "$translations"qtscript_??.qm      ./packages/root/data/translations
cp "$translations"qtxmlpatterns_??.qm ./packages/root/data/translations


# Dies ist fertig
rm ./packages/root/data/vokoscreenNG
cp $buildPath/vokoscreenNG ./packages/root/data

# GStreamer, es werden grundsätzlich alle Dateien kopiert das sind ca. 15MB
cp /usr/lib64/gstreamer-1.0/*  ./packages/root/data/lib
cp -d /usr/lib64/libgst*       ./packages/root/data/lib

cp -d /usr/lib64/libspa-lib.so.*                 ./packages/root/data/lib
cp -d /usr/lib64/spa/support/libspa-dbus.so      ./packages/root/data/lib
cp -d /usr/lib64/spa/support/libspa-support.so   ./packages/root/data/lib
cp -d /usr/lib64/libffi.so.*                     ./packages/root/data/lib
cp -d /usr/lib64/libpcre.so.*                    ./packages/root/data/lib



#array=$(ldd /usr/lib64/qt5/plugins/mediaservice/libgstcamerabin.so | sed -e 's/\t//' | grep /usr/lib | cut -d " " -f3)
#for i in "${array[@]}"
#do
#	echo "$i"
#	cp -d $i ./packages/root/data/lib
#done



/home/vk/Qt/QtIFW-3.2.0/bin/binarycreator --offline-only \
                                          -c config/config.xml \
                                          -p packages $installerName
