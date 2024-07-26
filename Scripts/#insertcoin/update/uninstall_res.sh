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

function identify_folder {
if [ -d "$USB/games" ]; then
  GAMES=$USB/games
  ARCADE=$USB/_Arcade
  ALT=$USB/_Arcade/_alternatives
  CORE=$USB/_Arcade/Cores
  CONFIF=$USB/config
elif [ -d "$CIFS/games" ]; then
  GAMES=$CIFS/gamesS
  ARCADE=$CIFS/_Arcade
  ALT=$CIFS/_Arcade/_alternatives
  CORE=$CIFS/_Arcade/Cores
  CONFIF=$CIFS/config
else
  GAMES=$SD/games
  ARCADE=$SD/_Arcade
  ALT=$SD/_Arcade/_alternatives
  CORE=$SD/_Arcade/Cores
  CONFIG=$SD/config
fi
}


function getres {

if [ -d "/media/fat/Scripts/#insertcoin/res" ] 
then
   rm -r /media/fat/Scripts/#insertcoin/res
fi
if [ -f "/media/fat/Scripts/temp/res.zip" ] 
then
   rm -r /media/fat/Scripts/temp/res.zip
fi
      
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res.zip -O -k -s --output /media/fat/Scripts/temp/res.zip >/dev/null
unzip -qq /media/fat/Scripts/temp/res.zip -d /media/fat/Scripts/#insertcoin/res 
rm -r /media/fat/Scripts/temp/res.zip
}

function uninstallres {

if [ -d "$res" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo "Uinstalling $res/"

   #echo "mra"
   for file in $mra/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         if [ -f "$ARCADE/$f" ];
         then
            echo "removing $ARCADE/$f"
            rm -r "$ARCADE/$f"
         fi
      fi
   done

   #echo "cores"
   for file in $cores/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         if [ -f "$CORE/$f" ];
         then
            echo "$CORE/$f"

            rm -r "$CORE/$f"
         fi
      fi
   done

   #echo "alternatives"
   for file in $altdir/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         if [ -d "$ALT/$dir" ];
         then
            echo "removing $ALT/$dir"
            rm -r "$ALT/$dir"
         fi
      fi
   done

   #echo "config"
   for file in $config/*; do
   f=$(basename -- "$file")
   if [ -f "/media/fat/config/$f" ];
   then
      echo "removing $CONFIG/$f"
      rm -r "$CONFIG/$f"
   fi
   done

   #echo "games"
   for file in $games/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         if [ -d "$games/$dir" ];
         then
            echo "removing $GAMES/$dir"
            rm -r "$GAMES/$dir"
         fi
      fi
   done
   #removing res dir
   rm -r "$res"
   echo "Completed."

fi

}

identify_folder
getres
uninstallres