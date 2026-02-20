#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

TEMP=/media/fat/Scripts/temp
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs

icmainres=https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/
res="/media/fat/Scripts/#insertcoin/res"
mra=$res/_Arcade
cores=$res/_Arcade/cores
altdir=$res/_Arcade/_alternatives
config=$res/config
games=$res/games

source <(grep setup_res $ini)
setup_res="${setup_res:0:3}"
#echo "setup_res: $setup_res"

function identify_folder {

if [ "$setup_res" == "USB" ]; then
  des_games=$USB/games
  des_mame=$des_games/mame
  des_arcade=$USB/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
  des_config=$SD/config
elif [ "$setup_res" == "CIF" ]; then
  des_games=$CIFS/games
  des_mame=$des_games/mame
  des_arcade=$CIFS/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
  des_config=$SD/config
else
  des_games=$SD/games
  des_mame=$des_games/mame
  des_arcade=$SD/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
  des_config=$SD/config
fi
#echo "identify_folder : $des_arcade"

if [ ! -d "$TEMP" ] 
then
   mkdir $TEMP
fi 
}

function getres {

echo "Getting res reference /media/fat/Scripts/#insertcoin/res for uninstallation"

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
   echo "Uinstalling $res/"

   #echo "mra"
   for file in $mra/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         if [ -f "$des_arcade/$f" ];
         then
            #echo "removing $des_arcade/$f"
            rm -r "$des_arcade/$f"
         fi
      fi
   done

   #echo "cores"
   for file in $cores/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         if [ -f "$des_core/$f" ];
         then
            #echo "$des_core/$f"

            rm -r "$des_core/$f"
         fi
      fi
   done

   #echo "alternatives"
   for file in $altdir/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         if [ -d "$des_alt/$dir" ];
         then
            #echo "removing $des_alt/$dir"
            rm -r "$des_alt/$dir"
         fi
      fi
   done

   #echo "config"
   for file in $config/*; do
   f=$(basename -- "$file")
   if [ -f "$des_config/$f" ];
   then
      #echo "removing $des_config/$f"
      rm -r "$des_config/$f"
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
            #echo "removing $des_games/$dir"
            rm -r "$des_games/$dir"
         fi
      fi
   done
   #removing res dir
   rm -r "$res"
   echo -e "${GREEN}${CHECK}${NC} Completed"

fi

}

identify_folder
if [ ! "$setup_res" == "NON" ]; then
   getres
   uninstallres
fi