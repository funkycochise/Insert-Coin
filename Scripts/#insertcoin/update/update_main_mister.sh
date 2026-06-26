#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/setup.sh

echo -e "Installing custom Main"

#delete backup if it already exists
if [ -f "/media/fat/Mister_" ]; then
   echo "remove backup"
   #rm /media/fat/Mister_
fi

if [ -f "/media/fat/Mister_" ] && [ -f "/media/fat/Mister" ]; then
   rm /media/fat/Mister_
fi

#echo -e "getting custom Main"
wget -q -c -P /media/fat/Scripts/temp https://github.com/funkycochise/Main_MiSTer/tree/master/releases/MiSTer
if [ -f "/media/fat/Scripts/temp/Mister" ]; then
   #echo "/media/fat/Scripts/temp/Mister downloaded, installing"
   cp /media/fat/Scripts/temp/Mister /media/fat/Mister
fi
echo -e "${GREEN}${CHECK}${NC} Completed"
