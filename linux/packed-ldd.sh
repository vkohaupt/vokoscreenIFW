#!/bin/bash

# Version von vokoscreenNG
version="3.0.3"
installerName="vokoscreenNG-"$version"-linux-x86_64.run"
qtPath="/home/vk/Qt5.9.7/5.9.7/gcc_64/"
buildPath="/home/vk/Programmieren/vokoscreenNG/build-vokoscreenNG-Desktop-Release"

rm $installerName

lib="/usr/lib64/"
rm -rf ./packages/root/data/lib
mkdir ./packages/root/data/lib
target="./packages/root/data/lib"

# Dies ist fertig
plugins="/usr/lib64/qt5/plugins/"
rm -r ./packages/root/data/plugins
mkdir ./packages/root/data/plugins
mkdir ./packages/root/data/plugins/imageformats
mkdir ./packages/root/data/plugins/iconengines
mkdir ./packages/root/data/plugins/platforms
cp -r "$plugins"bearer                ./packages/root/data/plugins
cp -r "$plugins"iconengines/libq*     ./packages/root/data/plugins/iconengines
cp -r "$plugins"imageformats/libq*    ./packages/root/data/plugins/imageformats
cp -r "$plugins"mediaservice          ./packages/root/data/plugins
cp -r "$plugins"platforminputcontexts ./packages/root/data/plugins
cp -r "$plugins"platforms/libq*       ./packages/root/data/plugins/platforms
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

#************************************************* vokoscreenNG
vk_string=$(ldd ./packages/root/data/vokoscreenNG | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

#************************************************* bearer
vk_string=$(ldd ./packages/root/data/plugins/bearer/libqconnmanbearer.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

vk_string=$(ldd ./packages/root/data/plugins/bearer/libqgenericbearer.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

vk_string=$(ldd ./packages/root/data/plugins/bearer/libqnmbearer.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

#************************************************* mediaservice
vk_string=$(ldd ./packages/root/data/plugins/mediaservice/libgstaudiodecoder.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

vk_string=$(ldd ./packages/root/data/plugins/mediaservice/libgstcamerabin.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

vk_string=$(ldd ./packages/root/data/plugins/mediaservice/libgstmediacapture.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

vk_string=$(ldd ./packages/root/data/plugins/mediaservice/libgstmediaplayer.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

#************************************************ iconengines
vk_string=$(ldd ./packages/root/data/plugins/iconengines/libqsvgicon.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

#************************************************ imageformats
vk_string_ls=$(ls -al ./packages/root/data/plugins/imageformats/ | grep lib | cut -d " " -f9)
vk_array_ls=(`echo $vk_string_ls | sed 's/ /\n/g'`)
for i_ls in "${vk_array_ls[@]}"
do
    vk_string=$(ldd ./packages/root/data/plugins/imageformats/$i_ls | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
    array=(`echo $vk_string | sed 's/ /\n/g'`)
    for i in "${array[@]}"
    do
	    cp -df $i.* ./packages/root/data/lib
    done
done

#************************************************ platforms
vk_string=$(ldd ./packages/root/data/plugins/platforms/libqxcb.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

#************************************************ xcbglintegrations
vk_string=$(ldd ./packages/root/data/plugins/xcbglintegrations/libqxcb-egl-integration.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done

vk_string=$(ldd ./packages/root/data/plugins/xcbglintegrations/libqxcb-glx-integration.so | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
array=(`echo $vk_string | sed 's/ /\n/g'`)
for i in "${array[@]}"
do
	cp -df $i.* ./packages/root/data/lib
done


# Nur für Test ohne Gstreamer
#rm -r ./packages/root/data/gstreamer
#mkdir ./packages/root/data/gstreamer
#/home/vk/Qt/QtIFW-3.2.0/bin/binarycreator --offline-only \
#                                          -c config/config.xml \
#                                          -p packages $installerName
# Ende Test Gstreamer

#exit

# GStreamer, es werden grundsätzlich alle Dateien kopiert das sind ca. 15MB
rm -r ./packages/root/data/gstreamer
mkdir ./packages/root/data/gstreamer
cp -d /usr/lib64/gstreamer-1.0/* ./packages/root/data/gstreamer
cp -d /usr/lib64/libgst*         ./packages/root/data/gstreamer
vk_string_ls=$(ls -al ./packages/root/data/gstreamer | grep lib | cut -d ":" -f2 | cut -d" " -f2)
vk_array_ls=(`echo $vk_string_ls | sed 's/ /\n/g'`)
for i_ls in "${vk_array_ls[@]}"
do
    vk_string=$(ldd ./packages/root/data/gstreamer/$i_ls | grep "=>" | sed -e "s/\t//" | grep ^lib | cut -d " " -f3 | cut -d "." -f1)
    array=(`echo $vk_string | sed 's/ /\n/g'`)
    for i in "${array[@]}"
    do
	    cp -df $i.* ./packages/root/data/lib
    done
done

# Pipewire librarys müßen entfernt werden da sonst das Programm erst gar nicht startet.
rm ./packages/root/data/lib/*pipewire*
rm ./packages/root/data/gstreamer/*pipewire*

cp -d /usr/lib64/spa/support/libspa-support.so ./packages/root/data/lib

# openh264 download https://github.com/cisco/openh264/releases
cp -d /usr/lib64/libopenh264.so.*              ./packages/root/data/lib

rm ./packages/root/data/lib/libc.so.6
rm ./packages/root/data/lib/libdl.so.2
rm ./packages/root/data/lib/libm.so.6
rm ./packages/root/data/lib/libpthread.so.0
rm ./packages/root/data/lib/libresolv.so.2
rm ./packages/root/data/lib/librt.so.1


/home/vk/Qt/QtIFW-3.2.0/bin/binarycreator --offline-only \
                                          -c config/config.xml \
                                          -p packages $installerName