#!/bin/bash

clear
launchdir=$(pwd)
#echo "launchdir : $launchdir"

#change this target folder name, it's the name that will be displayed in _Arcade
targetfolder="_Insert_Coin"
finalfolder="_Insert Coin"

./update/pre.sh

#get setup settings
ini=/media/fat/Scripts/#insertcoin/setup.ini

source <(grep mame_rom $ini)
mame_rom=${mame_rom:0:1}
#echo "mame_rom: $mame_rom"
source <(grep gnw_rom $ini)
gnw_rom=${gnw_rom:0:1}
#echo "gnw_rom: $gnw_rom"
source <(grep console_mgl $ini)
console_mgl=${console_mgl:0:1}
#echo "console_mgl: $console_mgl"
source <(grep obsolete_core $ini)
obsolete_core=${obsolete_core:0:1}
#echo "obsolete_core: $obsolete_core"
source <(grep remove_other $ini)
remove_other=${remove_other:0:1}
#echo "remove_other: $remove_other"
source <(grep console_core $ini)
console_core=${console_core:0:1}
#echo "console_core: $console_core"
source <(grep dualsdram $ini)
dualsdram=${dualsdram:0:1}
#echo "dualsdram: $dualsdram"
source <(grep main_mister $ini)
main_mister=${main_mister:0:1}
#echo "main_mister: $main_mister"

source <(grep psx $ini)
psx=${psx:0:1}
#echo "psx: $psx"
source <(grep s32x $ini)
s32x=${s32x:0:1}
#echo "s32x: $s32x"
source <(grep saturn $ini)
saturn=${saturn:0:1}
#echo "saturn: $saturn"
source <(grep sgb $ini)
sgb=${sgb:0:1}
#echo "sgb: $sgb"
source <(grep neogeo $ini)
neogeo=${neogeo:0:1}
#echo "neogeo: $neogeo"
source <(grep n64 $ini)
n64=${n64:0:1}
#echo "n64: $n64"
source <(grep folder_name $ini)
#echo "folder_name: $folder_name"
folder_name=${folder_name:0:${#folder_name}}
#echo "folder_name: $folder_name"
#if [ -z "$folder_name" ]; then
#  folder_name=$finalfolder
#fi
#echo "folder_name: $folder_name"


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

#if test -f "/media/fat/Scripts/out.txt"; then
#   rm -r /media/fat/Scripts/out.txt
#fi

start_time=$SECONDS


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
  ./update/clean_obsolete.sh "$remove_other"
fi 
if [ "$console_core" == "1" ]; then
  ./update/update_console.sh $dualsdram $psx $s32x $saturn $sgb $neogeo $n64
fi
sh ./update/post.sh

if [ "$main_mister" == "1" ]; then
   ./update/update_main_mister.sh
   reboot
fi

#echo -n -e "Creation process completed in $elapsed sec.\n"

