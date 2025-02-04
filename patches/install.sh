#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="system/core frameworks/base external/ffmpeg external/stagefright-plugins bootable/recovery-twrp bootable/recovery" 



# red + nocolor
RED='\033[0;31m'
NC='\033[0m'

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
    echo -e "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	git apply -v $rootdirectory/device/xiaomi/latte/patches/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory
