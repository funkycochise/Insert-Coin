#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

source <(grep setup_res $ini)
setup_res="${setup_res:0:3}"
#echo "setup_res: $setup_res"

TEMP=/media/fat/Scripts/temp
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs

icmainres=https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/
res="/media/fat/Scripts/#insertcoin/res"
temp="/media/fat/Scripts/temp"
mra=$res/_Arcade
mgl=$res/mgl
cores=$res/_Arcade/cores
altdir=$res/_Arcade/_alternatives
config=$res/config
games=$res/games

function identify_folder {

if [ "$setup_res" == "USB" ]; then
  des_games=$USB/games
  des_mame=$des_games/mame
  des_arcade=$USB/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
  des_config=$USB/config
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

if ! [ -d "$des_arcade" ]; then
   #echo "creating $des_arcade"
   mkdir $des_arcade
fi
if ! [ -d "$des_core" ]; then
   #echo "creating $des_core"
   mkdir $des_core
fi
if ! [ -d "$des_alt" ]; then
   #echo "creating $des_alt"
   mkdir $des_alt
fi
if ! [ -d "$des_config" ]; then
   #echo "creating $des_config"
   mkdir $des_config
fi
if [ ! -d "$TEMP" ] 
then
   mkdir $TEMP
fi 
}


function getres {

echo "Getting res /media/fat/Scripts/#insertcoin/res "

if [ -d "$res" ] 
then
   rm -r "$res"
fi
if [ -f "/media/fat/Scripts/temp/res.zip" ] 
then
   rm -r $temp/res.zip
fi
      
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res.zip -O -k -s --output $temp/res.zip >/dev/null
unzip -qq $temp/res.zip -d $res
rm -r $temp/res.zip

}

function installres {
if [ -d "$res" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi

   echo "Installing $des_arcade"

   #echo "mgl"
   for file in $mgl/*.mgl; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         mraeq="${f:0:${#f} -4 }.mra"
         #echo "mraeq: $mraeq"
         if [ ! -f "$des_arcade/$f" ]; then
            echo -e "\r$des_arcade/$f                                                   "
            cp "$file" "$des_arcade/$f"
         fi
         #if [ -f "$des_arcade/$mraeq" ]; then
         #   echo -e "\to delete mra: $des_arcade/$mraeq                                             "
         #fi
      fi
   done

   #echo "mra"
   for file in $mra/*.mra; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         if [ ! -f "$des_arcade/$f" ]; then
            echo -e "\r$des_arcade/$f                                                   "
            cp "$file" "$des_arcade/$f"
         fi
      fi
   done

   #echo "alternatives"
   for file in $altdir/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         if [ ! -d "$des_alt/$dir" ];
         then
            #echo "Creating $des_alt/$dir"
            mkdir "$des_alt/$dir"
         fi

         for file in "$altdir/$dir"/*; do
            f=$(basename -- "$file")
            if [ ! -f "$des_alt/$dir/$f" ]; then
               #echo -e "\r$des_alt/$dir/$f                                                   "
               cp "$altdir/$dir/$f" "$des_alt/$dir/$f"
            fi
         done
      fi
   done

   echo "config"
   for file in $config/*; do
   f=$(basename -- "$file")
   if [ ! -f "$des_config/$f" ];
   then
      echo -e "\r$des_config/$f                                                   "
      cp "$file" "$des_config/$f"
   fi
   done

   echo "alternatives"


   #removing res dir
   #rm -r "$res"
fi
#echo -e "${GREEN}${CHECK}${NC} Completed"
}

identify_folder
if [ ! "$setup_res" == "NON" ]; then
   getres
   installres
fi