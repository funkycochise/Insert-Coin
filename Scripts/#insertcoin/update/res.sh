#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/setup.sh

SD=/media/fat
res="/media/fat/Scripts/res"
mra=$res/_Arcade
mgl=$res/_Arcade
cores=$res/_Arcade/cores
altdir=$res/_Arcade/_alternatives
config=$res/config
games=$res/games
temp="/media/fat/Scripts/temp"
des_arcade=$SD/_Arcade
des_core=$des_arcade/cores
des_alt=$des_arcade/_alternatives
des_config=$SD/config


#echo "Downloading res (blahm1d)"

if [ ! -d "/media/fat/Scripts/res/" ];
then  
   mkdir /media/fat/Scripts/res/
fi
cd /media/fat/Scripts/res/

function dl {

file=$1

echo -e "${BLUE}${CHECK}${NC} $file" 

wget -q https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/$file -O /media/fat/Scripts/temp/$file
if [ -f "/media/fat/Scripts/temp/$file" ]; then
  unzip -qq -o /media/fat/Scripts/temp/$file -d /media/fat/Scripts/res/
  rm -r /media/fat/Scripts/temp/$file
else
   echo -e "Error downloading $file" 
fi

}

function install {
#echo "Installing res"

   #echo "mra"
   if [ -d "$mra" ]; 
   then
      for file in $mra/*.mra; do
         #echo "$file"
         f=$(basename -- "$file")
         if [ -f "$file" ];
         then
            if [ ! -f "$des_arcade/$f" ]; then
               #echo -e "\rcopying $des_arcade/$f                                                   "
               cp -f "$file" "$des_arcade/$f"
            fi
         fi
      done
   fi
   #echo "mgl"
   if [ -d "$mgl" ]; 
   then
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
   fi
   #echo "cores"
   if [ -d "$mra" ]; 
   then
      for file in $cores/*.rbf; do
         f=$(basename -- "$file")
         if [ ! -f "$des_core/$f" ]; then
            #echo -e "\rcopying $des_core/$f                                                   "
            cp "$file" "$des_core/$f"
         fi
      done
   fi
   #echo "config"
   if [ -d "$config" ]; 
   then
      for file in $config/*; do
         f=$(basename -- "$file")
         if [ ! -f "$des_config/$f" ]; then
            #echo -e "$des_config/$f                                                   "
            cp -r "$file" "$des_config/$f"
         fi
      done
   fi
   #echo "alternatives"
   if [ -d "$config" ]; 
   then
      for file in $altdir/*; 
      do
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
                  #echo -e "\rcopying $des_alt/$dir/$f                                                   "
                  cp -f "$altdir/$dir/$f" "$des_alt/$dir/$f"
               #fi
            done
         fi
      done
   fi

#cleaning
rm -r /media/fat/Scripts/res/

}

echo "Downloading additional res"
dl "Atari.zip"
dl "Banpresto.zip"
dl "Batsugun.zip"
dl "Breakthru.zip"
dl "CowBoys.zip"
dl "deco16.zip"
dl "DECOCassette.zip"
dl "EmpireCity.zip"
dl "MegaPlay.zip"
dl "Psikyo.zip"
dl "res.zip"
dl "SYS11.zip"
dl "vs.zip"
dl "ZN1.zip"
dl "jlrh_OperWolf.zip"
dl "Argus.zip"
dl "SuperOffroad.zip"


echo "Downloading res (blahm1d)"
dl "blahm1d_UMK3.zip"
dl "blahm1d_SmashTV.zip"
dl "blahm1d_Rampage.zip"
dl "blahm1d_lkage.zip"
dl "blahm1d_NBAHangtime.zip"

install


echo -e "${GREEN}${CHECK}${NC} Completed"
