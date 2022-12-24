#!/bin/bash

clear
launchdir=$(pwd)
#echo "launchdir : $launchdir"

#clean of existing folders

#change this target folder name, it's the name that will be displayed in _Arcade
targetfolder="_Insert_Coin"
finalfolder="_Insert Coin"

if [ -d "/media/fat/_Arcade/$targetfolder" ] 
then
  rm -r "/media/fat/_Arcade/$targetfolder"
fi
if [  -d "/media/fat/_Arcade/$finalfolder" ] 
then
  rm -r "/media/fat/_Arcade/$finalfolder" 
fi

sh ./update/banner.sh

sh ./update/pre.sh

sh ./update/create_menu.sh $launchdir "$targetfolder"
mv "/media/fat/_Arcade/$targetfolder" "/media/fat/_Arcade/$finalfolder" 

if test -f "./update/mame.sh"; then
   sh ./update/mame.sh
fi
if test -f "./update/update_console.sh"; then
   sh ./update/update_console.sh
fi
sh ./update/post.sh

if test -f "./update/update_main_mister.sh"; then
   sh ./update/update_main_mister.sh
   reboot
fi
