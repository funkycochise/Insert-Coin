#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

icmainres=https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/
#sources
res="/media/fat/Scripts/#insertcoin/res"
mra=$res/_Arcade
cores=$res/_Arcade/cores
altdir=$res/_Arcade/_alternatives
config=$res/config
games=$res/games
#target
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs

source <(grep setup_res $ini)
#echo "setup_res: $setup_res"


function identify_folder {

if [ "$setup_mame" == "USB" ]; then
   GAMES=$USB/games
   ARCADE=$USB/_Arcade
   ALT=$USB/_Arcade/_alternatives
   CORE=$USB/_Arcade/Cores
   CONFIG=$USB/config
elif [ "$setup_mame" == "CIFS" ]; then
   GAMES=$CIFS/gamesS
   ARCADE=$CIFS/_Arcade
   ALT=$CIFS/_Arcade/_alternatives
   CORE=$CIFS/_Arcade/Cores
   CONFIG=$CIFS/config
else
   GAMES=$SD/games
   ARCADE=$SD/_Arcade
   ALT=$SD/_Arcade/_alternatives
   CORE=$SD/_Arcade/Cores
   CONFIG=$SD/config
fi
if [ ! -d "$ARCADE" ] && [ ! "$setup_res" == "NONE" ];  then
   mkdir $ARCADE
fi
}


function getres {

if [ -d "$res" ] 
then
   rm -r "$res"
fi
if [ -f "/media/fat/Scripts/temp/res.zip" ] 
then
   rm -r /media/fat/Scripts/temp/res.zip
fi
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res.zip -O -k -s --output /media/fat/Scripts/temp/res.zip >/dev/null
unzip -qq /media/fat/Scripts/temp/res.zip -d /media/fat/Scripts/#insertcoin/res 
rm -r /media/fat/Scripts/temp/res.zip
}

function installres {
#echo "Installing Insert-coin resources."
if [ -d "$res" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo "Installing $res/"

   #echo "mra"
   for file in $mra/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         #echo "$ARCADE/$f"

         cp "$file" "$ARCADE/$f"
      fi
   done

   #echo "cores"
   for file in $cores/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         #echo "$CORE/$f"
         cp "$file" "$CORE/$f"
      fi
   done

   #echo "alternatives"
   for file in $altdir/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         if [ ! -d "$ALT/$dir" ];
         then
            mkdir "$ALT/$dir"
         fi
         #echo "copying in $ALT/$dir"

         for file in "$altdir/$dir"/*; do
            f=$(basename -- "$file")
            #echo "$ALT/$dir/$f"
            cp "$altdir/$dir/$f" "$ALT/$dir/$f"
         done
      fi
   done

   #echo "config"
   for file in $config/*; do
   f=$(basename -- "$file")
   if [ ! -f "$CONFIG/$f" ];
   then
      cp "$config/$f" "$CONFIG/$f"
   fi
   done

   #echo "games"
   for file in $games/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         #echo "file: $file"
         #echo "dir: $dir"
         if [ ! -d "$GAMES/$dir" ];
         then
            #echo "Creating $GAMES/$dir"
            mkdir "$GAMES/$dir"
         fi
         #echo "copying in $GAMES/$dir"

         for file in "$games/$dir"/*; do
            f=$(basename -- "$file")
            #echo "$GAMES/$dir/$f"
            cp "$games/$dir/$f" "$GAMES/$dir/$f"
         done
      fi
   done

   #removing res dir
   rm -r "$res"
fi
echo "Completed."
}

identify_folder
if [ ! "$setup_res" == "NONE" ];  then
   getres
   installres
fi