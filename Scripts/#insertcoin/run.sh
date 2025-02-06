#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

export LANG=C.UTF-8

./update/pre.sh
loadsetup

clear
launchdir=$(pwd)
#echo "launchdir : $launchdir"

#change this target folder name, it's the name that will be displayed in _Arcade
targetfolder="_Insert_Coin"
finalfolder="_Insert Coin"


#clean of existing folders
folder="/media/fat/_Arcade/finalfolder"
#echo "$folder"
if [ -d "$folder" ] 
then
  #echo "Removing $folder"
  rm -r "$folder"
fi 

folder="/media/fat/_Arcade/$finalfolder"
#echo "$folder"
if [ -d "$folder" ] 
then
  #echo "Removing $folder"
  rm -r "$folder"
fi 
folder="/media/fat/_Arcade/$targetfolder"
if [ -d "$folder" ] 
then
  #echo "Removing $folder"
  rm -r "$folder"
fi 

COL=$(( $RANDOM % 12 + 1 ))

./update/banner.sh $COL

if test -f "./update/install_local.sh"; then
   ./update/install_local.sh
fi

if test -f "/media/fat/Scripts/#insertcoin/out.txt"; 
then
   rm -r /media/fat/Scripts/#insertcoin/out.txt
fi

if test -f "./update/install_res.sh"; then
   ./update/install_res.sh
fi

start_time=$SECONDS

if test -f "./update/key.sh"; then
   ./update/key.sh
fi


./update/create_menu.sh $launchdir "$targetfolder" $COL

if test -d "/media/fat/_Arcade/$targetfolder"; 
then
  #echo "$targetfolder to $finalfolder"

  mv "/media/fat/_Arcade/$targetfolder" "/media/fat/_Arcade/$finalfolder"
fi
elapsed=$(( SECONDS - start_time ))

if [ "$mame_rom" == "1" ]; then
  ./update/mame.sh
fi

if [ "$gnw_rom" == "1" ]; then
  ./update/gw.sh
fi
if [ "$console_mgl" == "1" ]; then
  ./update/clean_console.sh
fi
if [ "$obsolete_core" == "1" ]; then
  ./update/clean_obsolete.sh
fi 
if [ "$console_core" == "1" ]; then
  ./update/update_console.sh
fi

./update/create_shortcut.sh

sh ./update/post.sh


#echo -n -e "Creation process completed in $elapsed sec.\n"

#if test -f "/media/fat/Scripts/#insertcoin/out.txt"; 
#then
#   echo "Not found mras :"
#   cat /media/fat/Scripts/#insertcoin/out.txt
#fi
echo "Updated _Console cores :"
find /media/fat/_Console/*.rbf  -mtime 0 -printf '%p\n' 2>/dev/null | sort -r | more

if [ "$main_mister" == "1" ]; then
   ./update/update_main_mister.sh
   reboot
   #echo "main Mister"
fi