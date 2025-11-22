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
mgl=$res/_Arcade
cores=$res/_Arcade/cores
altdir=$res/_Arcade/_alternatives
config=$res/config
games=$res/games

function arkanoid {

ARKNOID="/media/fat/_Arcade/_alternatives/_Arkanoid"
ARKNOID2="/media/fat/_Arcade/_alternatives/_Arkanoid II"
CORE="/media/fat/_Arcade/cores"

if [ -d "$ARKNOID2" ]; then
   rm -r "$ARKNOID2"
fi
if [ -d "$ARKNOID" ]; then
   if [ ! -d "$ARKNOID2" ]; then
      cp -r "$ARKNOID" "$ARKNOID2"
   fi
fi

find "$ARKNOID2" -maxdepth 1 -type f -name "*.mra" ! -name "*Revenge of DOH*.mra" -delete
#echo "ARKANOID2"
#ls "$ARKNOID2" -l

find "$ARKNOID" -maxdepth 1 -type f -name "*Revenge of DOH*" -delete 
#echo "ARKANOID"
#ls "$ARKNOID" -l
}

function tmnt2 {

TMNT="/media/fat/_Arcade/_alternatives/_Teenage Mutant Ninja Turtles"
TMNT2="/media/fat/_Arcade/_alternatives/_Teenage Mutant Ninja Turtles 2"

if [ -d "$TMNT2" ]; then
   rm -r "$TMNT2"
fi
if [ -d "$TMNT" ]; then
   if [ ! -d "$TMNT2" ]; then
      cp -r "$TMNT" "$TMNT2"
   fi
fi

find "$TMNT2" -maxdepth 1 -type f -name "*.mra" ! -name "*Turtles in Time*.mra" -delete
#echo "TMNT2"
#ls "$TMNT2"
find "$TMNT" -maxdepth 1 -type f -name "*Time*" -delete 
#echo "TMNT"
#ls "$TMNT"

#coc TMNT2 core , remove previously installed
if [ -f "$CORE/tmnt2_mister_20251012.rbf" ]; then
  if [ -f "$CORE/tmnt2_mister_20251007.rbf" ]; then
    rm -r "$CORE/tmnt2_mister_20251007.rbf"
  fi
fi
}

function identify_folder {

if [ "$setup_res" == "USB" ]; then
  des_games=$USB/games
  des_mame=$des_games/mame
  des_arcade=$USB/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
  des_config=$USB/config
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

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo "Getting res /media/fat/Scripts/#insertcoin/res "

if [ -d "$res" ] 
then
   rm -r "$res"
fi
if [ -f "/media/fat/Scripts/temp/res.zip" ] 
then
   rm -r $temp/res.zip
fi
if [ -f "/media/fat/Scripts/temp/res2.zip" ] 
then
   rm -r $temp/res2.zip
fi
if [ -f "/media/fat/Scripts/temp/res3.zip" ] 
then
   rm -r $temp/res3.zip
fi
if [ -f "/media/fat/Scripts/temp/res4.zip" ] 
then
   rm -r $temp/res4.zip
fi

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi     
echo -e "${BLUE}${CHECK}${NC} res" 
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res.zip -O -k -s --output $temp/res.zip >/dev/null
unzip -qq $temp/res.zip -d $res
rm -r $temp/res.zip

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${BLUE}${CHECK}${NC} res2" 
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res2.zip -O -k -s --output $temp/res2.zip >/dev/null
unzip -qq $temp/res2.zip -d $res
rm -r $temp/res2.zip

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${BLUE}${CHECK}${NC} res3" 
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res3.zip -O -k -s --output $temp/res3.zip >/dev/null
unzip -qq $temp/res3.zip -d $res
rm -r $temp/res3.zip

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${BLUE}${CHECK}${NC} res4" 
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res4.zip -O -k -s --output $temp/res4.zip >/dev/null
unzip -qq $temp/res4.zip -d $res
rm -r $temp/res4.zip

}

function installres {
if [ -d "$res" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi

   echo "Installing $des_arcade"

   #echo "mra"
   for file in $mra/*.mra; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         #if [ ! -f "$des_arcade/$f" ]; then
         #   #echo -e "\rcopying $des_arcade/$f                                                   "
            cp -f "$file" "$des_arcade/$f"
         #fi
      fi
   done

   #echo "mgl"
   for file in $mgl/*.mgl; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ]; then
         #if [ ! -f "$des_arcade/$f" ]; then
            #echo -e "\rcopying $des_arcade/$f                                                   "
            cp "$file" "$des_arcade/$f"
         #fi
      fi
   done

   #echo "config"
   for file in $config/*; do
   f=$(basename -- "$file")
   if [ ! -f "$des_config/$f" ]; then
      #echo -e "$des_config/$f                                                   "
      cp "$file" "$des_config/$f"
   fi
   done

   #echo "cores"
   for file in $cores/*.rbf; do
   f=$(basename -- "$file")
   if [ ! -f "$des_config/$f" ]; then
      #echo -e "\rcopying $des_core/$f                                                   "
      cp "$file" "$des_core/$f"
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
            #if [ ! -f "$des_alt/$dir/$f" ]; then
            #   #echo -e "\rcopying $des_alt/$dir/$f                                                   "
               cp -f "$altdir/$dir/$f" "$des_alt/$dir/$f"
            #fi
         done
      fi
   done

   #echo "games"
   for file in $games/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         #echo "Games : $dir"
         if [ ! -d "$des_games/$dir" ];
         then
            #echo "Creating : $des_games/$dir"
            mkdir "$des_games/$dir"
            #if [ -d "$des_games/$dir" ];
            #then
            #   echo "$des_games/$dir"
            #fi
         fi
         for file in "$games/$dir"/*; do
            f=$(basename -- "$file")
            #echo "File $f"
            if [ ! -f "$des_games/$dir/$f" ]; then
               #echo -e "$games/$dir/$f                                                   "
               cp -f "$games/$dir/$f" "$des_games/$dir/$f"
               touch "$des_games/$dir/$f"
            fi
         done
      fi
   done

   #removing res dir
   rm -r "$res"

   arkanoid
   tmnt2
fi
#echo -e "${GREEN}${CHECK}${NC} Completed"
}

function cleanneomra {

   for file in $des_arcade/*.mgl; do
      #echo "$file"
      f=$(basename -- "$file")
      #echo "$f"
      game=${f:0:${#f}-4}
      suf=${f:${#f}-3}
      mraeq="$des_arcade/$game.mra"
      #echo "$mraeq"
      if [ -f "$mraeq" ]; then
          #echo "delete: $mraeq"
          rm -r "$mraeq"
      fi
   done
}


identify_folder
if [ ! "$setup_res" == "NON" ]; then
   getres
   installres
   cleanneomra
fi
if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${GREEN}${CHECK}${NC} Completed"
