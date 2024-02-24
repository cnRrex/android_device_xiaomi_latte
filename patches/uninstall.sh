#!/bin/sh

rootdirectory="$PWD"
dirs="system/core frameworks/base external/libdrm external/ffmpeg external/stagefright-plugins" 


for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Cleaning $dir patches..."
	git checkout -- . && git clean -df
done

echo "Done!"
cd $rootdirectory
