#!/bin/sh

# Version von vokoscreenNG
version="3.0.3"
installerName="vokoscreenNG-"$version"-linux-x86_64.run"
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

cp -d /usr/lib64/libdca.so.*     ./packages/root/data/lib
cp -d /usr/lib64/libswscale.so.*  ./packages/root/data/lib
cp -d /usr/lib64/libsrtp.so.*     ./packages/root/data/lib
cp -d /usr/lib64/libpostproc.so.*  ./packages/root/data/lib
cp -d /usr/lib64/libnice.so.* ./packages/root/data/lib
cp -d /usr/lib64/libneon.so.* ./packages/root/data/lib
cp -d /usr/lib64/libtiger.so.* ./packages/root/data/lib
cp -d /usr/lib64/libde265.so.* ./packages/root/data/lib
cp -d /usr/lib64/libx265.so.*  ./packages/root/data/lib
cp -d /usr/lib64/libcdio.so.*  ./packages/root/data/lib
cp -d /usr/lib64/libmjpegutils-2.0.so.* ./packages/root/data/lib
cp -d /usr/lib64/libmpeg2.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libzbar.so.*           ./packages/root/data/lib
cp -d /usr/lib64/libSoundTouch.so.*     ./packages/root/data/lib
cp -d /usr/lib64/libvo-amrwbenc.so.*   ./packages/root/data/lib
cp -d /usr/lib64/libsbc.so.*           ./packages/root/data/lib
cp -d /usr/lib64/libspandsp.so.*       ./packages/root/data/lib
cp -d /usr/lib64/libvpx.so.*           ./packages/root/data/lib
cp -d /usr/lib64/libcogl-gst.so.*      ./packages/root/data/lib
cp -d /usr/lib64/liblrdf.so.*         ./packages/root/data/lib
cp -d /usr/lib64/libmms.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libmpcdec.so.*       ./packages/root/data/lib
cp -d /usr/lib64/libgraphene-1.0.so.* ./packages/root/data/lib
cp -d /usr/lib64/liba52.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libfdk-aac.so.*      ./packages/root/data/lib
cp -d /usr/lib64/libwebrtc_audio_processing.so.* ./packages/root/data/lib
cp -d /usr/lib64/libfluidsynth.so.*    ./packages/root/data/lib
cp -d /usr/lib64/libschroedinger-1.0.so.* ./packages/root/data/lib
cp -d /usr/lib64/libvo-aacenc.so.*    ./packages/root/data/lib
cp -d /usr/lib64/libIlmImf-2_2.so.*   ./packages/root/data/lib
cp -d /usr/lib64/libofa.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libtiger.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libswresample.so.*    ./packages/root/data/lib
cp -d /usr/lib64/libpipewire-0.2.so.* ./packages/root/data/lib
cp -d /usr/lib64/libgupnp-igd-1.0.so.* ./packages/root/data/lib
cp -d /usr/lib64/libkate.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libmpeg2encpp-2.0.so.* ./packages/root/data/lib
cp -d /usr/lib64/libwebpmux.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libcogl.so.*           ./packages/root/data/lib
cp -d /usr/lib64/libraptor2.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libImath-2_2.so.*      ./packages/root/data/lib
cp -d /usr/lib64/libmplex2-2.0.so.*     ./packages/root/data/lib
cp -d /usr/lib64/libzimg.so.*           ./packages/root/data/lib
cp -d /usr/lib64/libspa-lib.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libgssdp-1.0.so.*      ./packages/root/data/lib
cp -d /usr/lib64/libcelt0.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libHalf.so.*           ./packages/root/data/lib
cp -d /usr/lib64/libopenjpeg.so.*       ./packages/root/data/lib
cp -d /usr/lib64/libgupnp-1.0.so.*      ./packages/root/data/lib
cp -d /usr/lib64/libIex-2_2.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libIexMath-2_2.so.*    ./packages/root/data/lib
cp -d /usr/lib64/libIlmThread-2_2.so.*  ./packages/root/data/lib
cp -d /usr/lib64/libdouble-conversion.so.* ./packages/root/data/lib

cp -d /usr/lib64/libfaad.so.*            ./packages/root/data/lib
cp -d /usr/lib64/libmodplug.so.*         ./packages/root/data/lib
cp -d /usr/lib64/libopencore-amrnb.so.*  ./packages/root/data/lib
cp -d /usr/lib64/libdvdread.so.*         ./packages/root/data/lib
cp -d /usr/lib64/libssh2.so.*            ./packages/root/data/lib
cp -d /usr/lib64/libopencore-amrwb.so.*  ./packages/root/data/lib
cp -d /usr/lib64/libopenal.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libdc1394.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libdvdnav.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libva-wayland.so.*      ./packages/root/data/lib
cp -d /usr/lib64/libavc1394.so.*         ./packages/root/data/lib
cp -d /usr/lib64/libcaca.so.*            ./packages/root/data/lib
cp -d /usr/lib64/libchromaprint.so.*     ./packages/root/data/lib
cp -d /usr/lib64/libvidstab.so.*         ./packages/root/data/lib
cp -d /usr/lib64/librtmp.so.*            ./packages/root/data/lib
cp -d /usr/lib64/libshout.so.*           ./packages/root/data/lib
cp -d /usr/lib64/libopenmpt.so.*         ./packages/root/data/lib
cp -d /usr/lib64/librom1394.so.*         ./packages/root/data/lib
cp -d /usr/lib64/libxvidcore.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libtheora.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libiec61883.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libqgsttools_p.so.*     ./packages/root/data/lib
cp -d /usr/lib64/libvorbisenc.so.*       ./packages/root/data/lib
cp -d /usr/lib64/libvorbis.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libGL.so.*              ./packages/root/data/lib
cp -d /usr/lib64/libGLESv2.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libunwind.so.*          ./packages/root/data/lib
cp -d /usr/lib64/liborc-0.4.so.*         ./packages/root/data/lib
cp -d /usr/lib64/libjavascriptcoregtk-4.0.so.* ./packages/root/data/lib
cp -d /usr/lib64/liblilv-0.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libsratom-0.so.*        ./packages/root/data/lib
cp -d /usr/lib64/libsord-0.so.*          ./packages/root/data/lib
cp -d /usr/lib64/libserd-0.so.*          ./packages/root/data/lib
cp -d /lib64/libtinfo.so.*               ./packages/root/data/lib
cp -d /lib64/libncursesw.so.*            ./packages/root/data/lib
cp -d /lib64/libreadline.*               ./packages/root/data/lib

cp -d /usr/lib64/libcurl.so.*            ./packages/root/data/lib
cp -d /usr/lib64/libssh.so.*              ./packages/root/data/lib

# Bis hierher funktioniert es unter
# Ubuntu 18.04
# Ubuntu 19.10
# Ubuntu Buster 10.3


#cp -d /usr/lib/gstreamer-1.0/gst-plugin-scanner ./packages/root/data/lib
#cp -d /usr/lib64/libglib-2.0.so.*        ./packages/root/data/lib
#cp -d /usr/lib64/libgobject-2.0.so.*     ./packages/root/data/lib
#cp -d /usr/lib64/libgmodule-2.0.so.*     ./packages/root/data/lib
#cp -d /usr/lib64/libpcre.so.*            ./packages/root/data/lib
#cp -d /usr/lib64/libffi.so.*             ./packages/root/data/lib
#cp -d /usr/lib64/libgio-2.0.so.*         ./packages/root/data/lib
#cp -d /usr/lib64/libpango-1.0.so.*       ./packages/root/data/lib
#cp -d /usr/lib64/libpangoft2-1.0.so.*    ./packages/root/data/lib
#cp -d /usr/lib64/libpangocairo-1.0.so.*  ./packages/root/data/lib
#cp -d /usr/lib64/libgiomm-2.4.so.*       ./packages/root/data/lib
#cp -d /usr/lib64/libatk-1.0.so.*         ./packages/root/data/lib
#cp -d /usr/lib64/libatk-bridge-2.0.so.*  ./packages/root/data/lib
#cp -d /usr/lib64/libgtk-3.so.*           ./packages/root/data/lib
#cp -d /usr/lib64/libgdk-3.so.*           ./packages/root/data/lib
#cp -d /lib64/libpthread*                 ./packages/root/data/lib
#cp -d /lib64/libc-2.*                    ./packages/root/data/lib
#cp -d /lib64/libc.so.*                   ./packages/root/data/lib
#cp -d /lib64/libm-2.*                    ./packages/root/data/lib
#cp -d /lib64/libm.so.*                   ./packages/root/data/lib
#cp -d /lib64/librt-2.*                   ./packages/root/data/lib
#cp -d /lib64/librt.so.*                  ./packages/root/data/lib
#cp -d /lib64/libdl-2.*                   ./packages/root/data/lib
#cp -d /lib64/libdl.so.*                  ./packages/root/data/lib

#cp -d /usr/lib64/libpulse.so.*           ./packages/root/data/lib
#cp -d /usr/lib64/libpng16.so.*           ./packages/root/data/lib
#cp -d /usr/lib64/libharfbuzz.so.*        ./packages/root/data/lib
#cp -d /usr/lib64/libsystemd.so.*         ./packages/root/data/lib
#cp -d /usr/lib64/pulseaudio/libpulsecommon-11.1.so ./packages/root/data/lib
#cp -d /usr/lib64/libsndfile.so.*         ./packages/root/data/lib
#cp -d /usr/lib64/libFLAC.so.*            ./packages/root/data/lib




cp -d /usr/lib64/libspa-lib.so.*               ./packages/root/data/lib
cp -d /usr/lib64/spa/support/libspa-support*   ./packages/root/data/lib


# We must delete all pipewire files
rm ./packages/root/data/lib/*pipewire*



#cp -d /usr/lib64/spa/support/libspa-dbus*      ./packages/root/data/lib
#cp -d /usr/lib64/libffi.so.*                       ./packages/root/data/lib
#cp -d /usr/lib64/libpcre.so.*                      ./packages/root/data/lib



#array=$(ldd /usr/lib64/qt5/plugins/mediaservice/libgstcamerabin.so | sed -e 's/\t//' | grep /usr/lib | cut -d " " -f3)
#for i in "${array[@]}"
#do
#	echo "$i"
#	cp -d $i ./packages/root/data/lib
#done



/home/vk/Qt/QtIFW-3.2.0/bin/binarycreator --offline-only \
                                          -c config/config.xml \
                                          -p packages $installerName
