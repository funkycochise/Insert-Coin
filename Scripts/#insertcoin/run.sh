#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

export LANG=C.UTF-8

./update/pre.sh
loadsetup

skip_res_local="0"

clear
launchdir=$(pwd)
#echo "launchdir : $launchdir"

if [ -f "$names" ]; then
   source <(grep insertcoin $names)
else
   insertcoin="_#Insert-Coin"
fi

if [ "$rootfolder" != "1" ]; then
   targetfolder="/media/fat/_Arcade/$insertcoin"
else
   targetfolder="/media/fat/$insertcoin"
fi
if [ -d "$folder" ]; then
   rm -r "$targetfolder"
fi

if [ ! -d "$targetfolder" ]; then
   mkdir $targetfolder
fi

COL=$(( $RANDOM % 12 + 1 ))

if [ "$TERM" == "vt102" ]; then
./update/banner.sh $COL
else
./update/banner.sh $COL
fi

#echo "targetfolder : $targetfolder"

if test -f "/media/fat/Scripts/#insertcoin/out.txt"; 
then
   rm -r /media/fat/Scripts/#insertcoin/out.txt
fi

#clean of existing folders
if test -f "./update/sweep.sh"; then
  ./update/sweep.sh
fi

if [ "$skip_res_local" != "1" ]; then
   if test -f "./update/install_res.sh"; then
      ./update/install_res.sh
   fi
fi

start_time=$SECONDS

./update/create_menu.sh $launchdir "$targetfolder" $COL

if [ "$skip_res_local" != "1" ]; then
   if test -f "/media/fat/Scripts/#local/key2.sh"; then
      /media/fat/Scripts/#local/key2.sh
   fi
fi

if [ "$skip_res_local" != "1" ]; then
   if test -f "./update/install_local.sh"; then
      ./update/install_local.sh "$targetfolder"
      echo ""
   fi
fi

if [ "$skip_res_local" != "1" ]; then
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
fi

elapsed=$(( SECONDS - start_time ))


sh ./update/post.sh

#echo -n -e "Creation process completed in $elapsed sec.\n"

#if test -f "/media/fat/Scripts/#insertcoin/out.txt"; 
#then
#   echo "Not found mras :"
#   cat /media/fat/Scripts/#insertcoin/out.txt
#fi
if [ "$skip_res_local" != "1" ]; then
echo -e "${BLUE}${CHECK}${NC} Latest updated _Console cores :"
find /media/fat/_Console/*.rbf  -mtime 0 -printf '%p\n' 2>/dev/null | sort -r | more
echo -e "${BLUE}${CHECK}${NC} Latest updated _Arcade cores :"
find /media/fat/_Arcade/cores/*.rbf  -mtime 0 -printf '%p\n' 2>/dev/null | sort -r | more
fi

if [ "$skip_res_local" != "1" ]; then
   if [ "$main_mister" == "1" ]; then
      ./update/update_main_mister.sh
      reboot
      #echo "main Mister"
   fi
fi
