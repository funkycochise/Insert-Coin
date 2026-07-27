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
txt=$2

if [ -z "$txt" ];
then
   echo -e "${BLUE}${CHECK}${NC} $file"
else
   echo -e "${BLUE}${CHECK}${NC} $txt"
fi

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
dl "res.zip" "Neogeo and more"
dl "Argus.zip" "Argus"
dl "Atari.zip" "Atari"
dl "Banpresto.zip" "Banpresto 68000
dl "Batsugun.zip" "Batsugun"
dl "Breakthru.zip" "Breakthru"
dl "CowBoys.zip" "Cowboys of Moos Mesa"
dl "deco16.zip" "Deco 16"
dl "DECOCassette.zip" "Deco Cassette"
dl "EmpireCity.zip"
dl "jlrh_OperWolf.zip" "Operation Wolf"
dl "MegaPlay.zip" "SEGA Megaplay"
dl "Psikyo.zip" "Psikyo SH2"
dl "SuperOffroad.zip" "Super Off Road"
dl "SYS11.zip" "Namco System11"
dl "taitosj.zip" "Taito SJ"
dl "vs.zip" "Nintendo VS""
dl "ZN1.zip" "Namco ZN1"
dl "GoldenAxe2.zip" "Golden Axe The Revenge of Death Adder"
dl "Spider-Man.zip" "Spider man the video game"

echo "Downloading res (blahm1d)"
dl "blahm1d_UMK3.zip" "UMK3"
dl "blahm1d_SmashTV.zip" "Smash TV"
dl "blahm1d_Rampage.zip" "Rampage"
dl "blahm1d_lkage.zip" "The legend of Kage"
dl "blahm1d_NBAHangtime.zip" "NBA HAngtime"

install


echo -e "${GREEN}${CHECK}${NC} Completed"
