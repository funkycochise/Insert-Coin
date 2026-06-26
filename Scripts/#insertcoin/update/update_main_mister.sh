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
curl https://raw.githubusercontent.com/funkycochise/Main_MiSTer/master/releases/$MF /media/fat -O -k -s
if [ -f "media/fat/Mister" ]; then
   #echo "/media/fat/Scripts/temp/Mister downloaded, installed"
   cp /media/fat/Scripts/temp/Mister /media/fat/Mister
else
      cp /media/fat/Mister_ /media/fat/Mister
fi
echo -e "${GREEN}${CHECK}${NC} Completed"
