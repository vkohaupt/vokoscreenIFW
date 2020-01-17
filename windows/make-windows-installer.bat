rem @ECHO OFF
rem Install qt-opensource-windows-x86-5.9.4.exe
rem Install gstreamer-1.0-x86-1.14.4.msi
rem Install gstreamer-1.0-devel-x86-1.14.4.msi
rem Install https://download.qt.io/official_releases/qt-installer-framework/3.2.0/QtInstallerFramework-win-x86.exe
rem Install git
rem Create a folder
rem Change in the created folder
rem git clone https://github.com/vkohaupt/vokoscreenIFW.git
rem Copy vokoscreenNG.exe in the folder \vokoscreenIFW\windows\packages\root\data
rem Start this file

rem Version von vokoscreenNG
SET version=2.9.9-Beta
SET installerName=Installer-vokoscreenNG-%version%-windows.exe

rem Too find gcc
PATH=%PATH%;C:\Qt\Qt5.9.4\Tools\mingw530_32\bin

SET SCRIPT_LOCATION=%~dp0

C:\Qt\Qt5.9.4\5.9.4\mingw53_32\bin\windeployqt.exe --release %SCRIPT_LOCATION%\packages\root\data\vokoscreenNG.exe

SET libfolder=%SCRIPT_LOCATION%\packages\root\data

copy C:\Qt\Qt5.9.4\Tools\mingw530_32\opt\bin\ssleay32.dll %libfolder%
copy C:\Qt\Qt5.9.4\Tools\mingw530_32\opt\bin\libeay32.dll %libfolder%

copy C:\gstreamer\1.0\x86\bin\libbz2.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libffi-7.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libFLAC-8.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libglib-2.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgmodule-2.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgobject-2.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgstaudio-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgstbase-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgstpbutils-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgstreamer-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgstriff-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgstrtp-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgsttag-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libgstvideo-1.0-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libintl-8.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libmp3lame-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libogg-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libopus-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\liborc-0.4-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libvorbis-0.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libvorbisenc-2.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libwinpthread-1.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libx264-148.dll %libfolder%
copy C:\gstreamer\1.0\x86\bin\libz.dll %libfolder%

rem copy C:\gstreamer\1.0\x86\bin\libgcc_s_sjlj-1.dll
rem copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstopenh264.dll
rem copy C:\gstreamer\1.0\x86\bin\libstdc++-6.dll
rem copy C:\gstreamer\1.0\x86\bin\libopenh264.dll

copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstadder.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstaudioconvert.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstaudiorate.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstavi.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstcoreelements.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstdirectsoundsrc.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstflac.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstisomp4.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstlame.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstmatroska.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstopus.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstopusparse.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstvideoconvert.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstvideorate.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstvideoscale.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstvorbis.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstvpx.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstwinscreencap.dll %libfolder%
copy C:\gstreamer\1.0\x86\lib\gstreamer-1.0\libgstx264.dll %libfolder%

C:\Qt\QtIFW-3.2.0\bin\binarycreator --offline-only -c config/config.xml -p packages %installerName%

