#!/bin/sh

# Version von vokoscreenNG
version="3.0.0"
installerName="Installer-vokoscreenNG-"$version"-linux.run"
rm $installerName

progPath="/home/vk/Programmieren/vokoscreenNG/build-vokoscreenNG-Desktop_Qt_5_12_3_GCC_64bit-Release/"
rm ./packages/root/data/vokoscreenNG
cp "$progPath"vokoscreenNG ./packages/root/data

targetPathLib="./packages/root/data/lib/"
targetPathPlugins="./packages/root/data/plugins/"
sourcePathLib="/home/vk/Qt5.12.3/5.12.3/gcc_64/lib/"
sourcePathPlugins="/home/vk/Qt5.12.3/5.12.3/gcc_64/plugins/"

rm -r $targetPathLib
mkdir $targetPathLib

rm -r $targetPathPlugins
mkdir $targetPathPlugins

cp -r "$sourcePathPlugins"bearer $targetPathPlugins
cp -r "$sourcePathPlugins"iconengines $targetPathPlugins
cp -r "$sourcePathPlugins"imageformats $targetPathPlugins
cp -r "$sourcePathPlugins"mediaservice $targetPathPlugins
cp -r "$sourcePathPlugins"platforminputcontexts $targetPathPlugins
cp -r "$sourcePathPlugins"platforms $targetPathPlugins
cp -r "$sourcePathPlugins"xcbglintegrations $targetPathPlugins

cp -d "$sourcePathLib"libicudata.so* $targetPathLib
cp -d "$sourcePathLib"libicui18n.so* $targetPathLib
cp -d "$sourcePathLib"libicuio.so* $targetPathLib
cp -d "$sourcePathLib"libicule.so* $targetPathLib
cp -d "$sourcePathLib"libiculx.so* $targetPathLib
cp -d "$sourcePathLib"libicutest.so* $targetPathLib
cp -d "$sourcePathLib"libicutu.so* $targetPathLib
cp -d "$sourcePathLib"libicuuc.so* $targetPathLib

cp -d /usr/lib64/gstreamer-1.0/libgstapp.so                    $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstaudioconvert.so           $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstaudioparsers.so           $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstaudiorate.so              $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstaudioresample.so          $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstaudiotestsrc.so           $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstautodetect.so             $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstcamerabin.so              $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstcoreelements.so           $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstencoding.so               $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstisomp4.so                 $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstjpegformat.so             $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstjpeg.so                   $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstlibav.so                  $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstmatroska.so               $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstmultifile.so              $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstogg.so                    $targetPathLib
#cp -d /usr/lib64/gstreamer-1.0/libgstpipewire.so               $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstplayback.so               $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstpulseaudio.so             $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgsttheora.so                 $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgsttypefindfunctions.so      $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvaapi.so                  $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvideo4linux2.so           $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvideoconvert.so           $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvideocrop.so              $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvideofilter.so            $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvideoparsersbad.so        $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvideorate.so              $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvideoscale.so             $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvolume.so                 $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstvorbis.so                 $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstx264.so                   $targetPathLib
cp -d /usr/lib64/gstreamer-1.0/libgstximagesrc.so              $targetPathLib
#cp -d /usr/lib64/libasound.so*                            $targetPathLib
#cp -d /usr/lib64/libass.so*                               $targetPathLib
cp -d /usr/lib64/libavcodec.so*                      $targetPathLib
cp -d /usr/lib64/libavfilter.so*                      $targetPathLib
cp -d /usr/lib64/libavformat.so*                      $targetPathLib
cp -d /usr/lib64/libavresample.so*                        $targetPathLib
cp -d /usr/lib64/libavutil.so*                        $targetPathLib
#cp -d /usr/lib64/libblkid.so*                             $targetPathLib
#cp -d /usr/lib64/libbluray.so*                            $targetPathLib
#cp -d /usr/lib64/libbz2.so*                               $targetPathLib
#cp -d /usr/lib64/libcanberra.so*                          $targetPathLib
#cp -d /usr/lib64/libcap.so*                                $targetPathLib
cp -d /usr/lib64/libcelt0.so*                             $targetPathLib
#cp -d /usr/lib64/libcrypto.so.1.1                              $targetPathLib
#cp -d /usr/lib64/libdbus-1.so*                           $targetPathLib
#cp -d /usr/lib64/libdbusmenu-qt5.so*                      $targetPathLib
cp -d /usr/lib64/libdouble-conversion.so*                 $targetPathLib
#cp -d /usr/lib64/libdrm_intel.so*                         $targetPathLib
#cp -d /usr/lib64/libdrm_nouveau.so*                       $targetPathLib
#cp -d /usr/lib64/libdrm_radeon.so*                        $targetPathLib
#cp -d /usr/lib64/libdrm.so*                               $targetPathLib
#cp -d /usr/lib64/libEGL.so*                               $targetPathLib
#cp -d /usr/lib64/libexpat.so*                             $targetPathLib
cp -d /usr/lib64/libffi.so*                               $targetPathLib
cp -d /usr/lib64/libFLAC.so*                              $targetPathLib
#cp -d /usr/lib64/libfontconfig.so*                       $targetPathLib
cp -d /usr/lib64/libfreetype.so*                         $targetPathLib
cp -d /usr/lib64/libfribidi.so*                           $targetPathLib
cp -d /usr/lib64/libgcrypt.so*                           $targetPathLib
cp -d /usr/lib64/libgio-2.0.so*                        $targetPathLib
cp -d /usr/lib64/libglapi.so*                             $targetPathLib
cp -d /usr/lib64/libGLdispatch.so*                        $targetPathLib
cp -d /usr/lib64/libglib-2.0.so*                       $targetPathLib
cp -d /usr/lib64/libGL.so*                                $targetPathLib
#cp -d /usr/lib64/libGLX_mesa.so*                          $targetPathLib
#cp -d /usr/lib64/libGLX.so*                               $targetPathLib
cp -d /usr/lib64/libgmodule-2.0.so*                    $targetPathLib
cp -d /usr/lib64/libgmp.so*                              $targetPathLib
cp -d /usr/lib64/libgnutls.so*                          $targetPathLib
cp -d /usr/lib64/libgobject-2.0.so*                    $targetPathLib
cp -d /usr/lib64/libgomp.so*                              $targetPathLib
cp -d /usr/lib64/libgpg-error.so*                        $targetPathLib
cp -d /usr/lib64/libgraphite2.so*                         $targetPathLib
cp -d /usr/lib64/libgsm.so*                              $targetPathLib
cp -d /usr/lib64/libgstallocators-1.0.so*              $targetPathLib
cp -d /usr/lib64/libgstapp-1.0.so*                     $targetPathLib
cp -d /usr/lib64/libgstaudio-1.0.so*                   $targetPathLib
cp -d /usr/lib64/libgstbase-1.0.so*                    $targetPathLib
cp -d /usr/lib64/libgstbasecamerabinsrc-1.0.so*        $targetPathLib
cp -d /usr/lib64/libgstcodecparsers-1.0.so*            $targetPathLib
cp -d /usr/lib64/libgstgl-1.0.so*                      $targetPathLib
cp -d /usr/lib64/libgstpbutils-1.0.so*                 $targetPathLib
cp -d /usr/lib64/libgstphotography-1.0.so*             $targetPathLib
cp -d /usr/lib64/libgstreamer-1.0.so*                  $targetPathLib
cp -d /usr/lib64/libgstriff-1.0.so*                    $targetPathLib
cp -d /usr/lib64/libgstrtp-1.0.so*                     $targetPathLib
cp -d /usr/lib64/libgsttag-1.0.so*                     $targetPathLib
cp -d /usr/lib64/libgstvideo-1.0.so*                   $targetPathLib
cp -d /usr/lib64/libgudev-1.0.so*                         $targetPathLib
cp -d /usr/lib64/libHalf.so*                             $targetPathLib
cp -d /usr/lib64/libharfbuzz.so*                      $targetPathLib
cp -d /usr/lib64/libhogweed.so*                             $targetPathLib
#cp -d /usr/lib64/libICE.so*                               $targetPathLib

#cp -d /usr/lib64/libicudata.so*                            $targetPathLib
#cp -d /usr/lib64/libicui18n.so*                            $targetPathLib
#cp -d /usr/lib64/libicuuc.so*                              $targetPathLib


#cp -d /usr/lib64/libidn2.so*                              $targetPathLib
#cp -d /usr/lib64/libIex-2_2.so*                          $targetPathLib
#cp -d /usr/lib64/libIlmImf-2_2.so*                       $targetPathLib
#cp -d /usr/lib64/libIlmThread-2_2.so*                    $targetPathLib
#cp -d /usr/lib64/libjasper.so*                            $targetPathLib
#cp -d /usr/lib64/libjavascriptcoregtk-4.0.so*           $targetPathLib
cp -d /usr/lib64/libjbig.so*                                $targetPathLib
cp -d /usr/lib64/libjpeg.so*                              $targetPathLib
cp -d /usr/lib64/liblcms2.so*                             $targetPathLib
cp -d /usr/lib64/libltdl.so*                              $targetPathLib
cp -d /usr/lib64/liblz4.so*                               $targetPathLib
cp -d /usr/lib64/liblzma.so*                              $targetPathLib
cp -d /usr/lib64/libmng.so*                               $targetPathLib
cp -d /usr/lib64/libmodman.so*                            $targetPathLib
cp -d /usr/lib64/libmount.so*                             $targetPathLib
cp -d /usr/lib64/libmp3lame.so*                           $targetPathLib
cp -d /usr/lib64/libnettle.so*                              $targetPathLib
cp -d /usr/lib64/libnuma.so*                              $targetPathLib
cp -d /usr/lib64/libogg.so*                               $targetPathLib
cp -d /usr/lib64/libopenjpeg.so*                          $targetPathLib
cp -d /usr/lib64/libopus.so*                              $targetPathLib
cp -d /usr/lib64/liborc-0.4.so*                          $targetPathLib
cp -d /usr/lib64/libp11-kit.so*                           $targetPathLib
cp -d /usr/lib64/libpciaccess.so*                        $targetPathLib
cp -d /usr/lib64/libpcre.so*                              $targetPathLib
#cp -d /usr/lib64/libpipewire-0.2.so*                    $targetPathLib
cp -d /usr/lib64/libpng16.so*                           $targetPathLib
cp -d /usr/lib64/libpostproc.so*                       $targetPathLib
cp -d /usr/lib64/libpulse.so*                            $targetPathLib
#cp -d /usr/lib64/libqgsttools_p.so*                       $targetPathLib

#cp -d /usr/lib64/libQt5Core.so*                           $targetPathLib
#cp -d /usr/lib64/libQt5DBus.so*                           $targetPathLib
#cp -d /usr/lib64/libQt5Gui.so*                            $targetPathLib
#cp -d /usr/lib64/libQt5Multimedia.so*                     $targetPathLib
#cp -d /usr/lib64/libQt5MultimediaWidgets.so*              $targetPathLib
#cp -d /usr/lib64/libQt5Network.so*                        $targetPathLib
#cp -d /usr/lib64/libQt5OpenGL.so*                         $targetPathLib
#cp -d /usr/lib64/libQt5PrintSupport.so*                   $targetPathLib
#cp -d /usr/lib64/libQt5Qml.so*                            $targetPathLib
#cp -d /usr/lib64/libQt5QuickControls2.so*                 $targetPathLib
#cp -d /usr/lib64/libQt5Quick.so*                          $targetPathLib
#cp -d /usr/lib64/libQt5QuickTemplates2.so*                $targetPathLib
#cp -d /usr/lib64/libQt5Svg.so*                            $targetPathLib
#cp -d /usr/lib64/libQt5TextToSpeech.so*                   $targetPathLib
#cp -d /usr/lib64/libQt5Widgets.so*                        $targetPathLib
#cp -d /usr/lib64/libQt5X11Extras.so*                      $targetPathLib
#cp -d /usr/lib64/libQt5XcbQpa.so*                         $targetPathLib
#cp -d /usr/lib64/libQt5Xml.so*                            $targetPathLib

lib="/home/vk/Qt5.12.3/5.12.3/gcc_64/lib/"
target="./packages/root/data/lib"
cp -d "$lib"libQt5Core.so* $target
cp -d "$lib"libQt5Gui.so* $target
cp -d "$lib"libQt5MultimediaGstTools.so* $target
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



#cp -d /usr/lib64/libSM.so*                                $targetPathLib
cp -d /usr/lib64/libsndfile.so*                          $targetPathLib
cp -d /usr/lib64/libspa-lib.so*                         $targetPathLib
cp -d /usr/lib64/libspeex.so*                             $targetPathLib
cp -d /usr/lib64/libssl.so*                                 $targetPathLib
cp -d /usr/lib64/libstdc++.so*                           $targetPathLib
cp -d /usr/lib64/libswresample.so*                      $targetPathLib
cp -d /usr/lib64/libswscale.so*                         $targetPathLib
cp -d /usr/lib64/libsystemd.so*                          $targetPathLib
cp -d /usr/lib64/libtasn1.so*                             $targetPathLib
cp -d /usr/lib64/libtheoradec.so*                         $targetPathLib
cp -d /usr/lib64/libtheoraenc.so*                         $targetPathLib
cp -d /usr/lib64/libtiff.so*                              $targetPathLib
cp -d /usr/lib64/libtwolame.so*                           $targetPathLib
cp -d /usr/lib64/libudev.so*                              $targetPathLib
cp -d /usr/lib64/libunistring.so*                         $targetPathLib
cp -d /usr/lib64/libunwind.so*                            $targetPathLib
cp -d /usr/lib64/libuuid.so*                              $targetPathLib
cp -d /usr/lib64/libv4l2.so*                              $targetPathLib
cp -d /usr/lib64/libv4lconvert.so*                        $targetPathLib
cp -d /usr/lib64/libva-drm.so*                          $targetPathLib
cp -d /usr/lib64/libva.so*                              $targetPathLib
cp -d /usr/lib64/libva-wayland.so*                      $targetPathLib
cp -d /usr/lib64/libva-x11.so*                          $targetPathLib
cp -d /usr/lib64/libvdpau.so*                             $targetPathLib
cp -d /usr/lib64/libvidstab.so*                             $targetPathLib
cp -d /usr/lib64/libvorbisenc.so*                        $targetPathLib
cp -d /usr/lib64/libvorbisfile.so*                        $targetPathLib
cp -d /usr/lib64/libvorbis.so*                            $targetPathLib
cp -d /usr/lib64/libvpx.so*                               $targetPathLib
cp -d /usr/lib64/libwayland-client.so*                    $targetPathLib
cp -d /usr/lib64/libwayland-egl.so*                       $targetPathLib
cp -d /usr/lib64/libwebpdemux.so*                         $targetPathLib
cp -d /usr/lib64/libwebpmux.so*                           $targetPathLib
cp -d /usr/lib64/libwebp.so*                              $targetPathLib
cp -d /usr/lib64/libX11.so*                               $targetPathLib
cp -d /usr/lib64/libX11-xcb.so*                           $targetPathLib
cp -d /usr/lib64/libx264.so*                                $targetPathLib
cp -d /usr/lib64/libx265.so*                                $targetPathLib
#cp -d /usr/lib64/libXau.so*                               $targetPathLib
#cp -d /usr/lib64/libxcb-dri2.so*                          $targetPathLib
#cp -d /usr/lib64/libxcb-dri3.so*                          $targetPathLib
#cp -d /usr/lib64/libxcb-glx.so*                           $targetPathLib
#cp -d /usr/lib64/libxcb-icccm.so*                         $targetPathLib
#cp -d /usr/lib64/libxcb-image.so*                         $targetPathLib
#cp -d /usr/lib64/libxcb-keysyms.so*                       $targetPathLib
#cp -d /usr/lib64/libxcb-present.so*                       $targetPathLib
#cp -d /usr/lib64/libxcb-randr.so*                         $targetPathLib
#cp -d /usr/lib64/libxcb-render.so*                        $targetPathLib
#cp -d /usr/lib64/libxcb-render-util.so*                   $targetPathLib
#cp -d /usr/lib64/libxcb-shape.so*                         $targetPathLib
#cp -d /usr/lib64/libxcb-shm.so*                           $targetPathLib
#cp -d /usr/lib64/libxcb.so*                               $targetPathLib
#cp -d /usr/lib64/libxcb-sync.so*                          $targetPathLib
#cp -d /usr/lib64/libxcb-util.so*                          $targetPathLib
#cp -d /usr/lib64/libxcb-xfixes.so*                        $targetPathLib
#cp -d /usr/lib64/libxcb-xinerama.so*                      $targetPathLib
#cp -d /usr/lib64/libxcb-xkb.so*                           $targetPathLib
#cp -d /usr/lib64/libXcursor.so*                           $targetPathLib
#cp -d /usr/lib64/libXdamage.so*                           $targetPathLib
#cp -d /usr/lib64/libXext.so*                              $targetPathLib
#cp -d /usr/lib64/libXfixes.so*                            $targetPathLib
#cp -d /usr/lib64/libXi.so*                                $targetPathLib
#cp -d /usr/lib64/libxkbcommon.so*                         $targetPathLib
#cp -d /usr/lib64/libxkbcommon-x11.so*                     $targetPathLib
#cp -d /usr/lib64/libxml2.so*                              $targetPathLib
#cp -d /usr/lib64/libXrandr.so*                            $targetPathLib
#cp -d /usr/lib64/libXrender.so*                           $targetPathLib
#cp -d /usr/lib64/libxshmfence.so*                         $targetPathLib
#cp -d /usr/lib64/libxvidcore.so*                            $targetPathLib
#cp -d /usr/lib64/libXxf86vm.so*                           $targetPathLib
cp -d /usr/lib64/libzimg.so*                              $targetPathLib
#cp -d /usr/lib64/libzvbi.so*                             $targetPathLib
cp -d /usr/lib64/pulseaudio/libpulsecommon-11.1.so             $targetPathLib
cp -d /usr/lib64/spa/support/libspa-dbus.so                    $targetPathLib
cp -d /usr/lib64/spa/support/libspa-support.so                 $targetPathLib

cp -d /usr/lib64/libproxy.so* $targetPathLib

cp -d /usr/lib64/libgthread-2.0.so* $targetPathLib
cp -d /lib64/libc.so* $targetPathLib


/home/vk/Qt/QtIFW-3.2.0/bin/binarycreator --offline-only \
                                          -c config/config.xml \
                                          -p packages $installerName

