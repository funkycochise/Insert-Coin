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


if [ ! -d "/media/fat/Scripts/res/" ];
then  
   mkdir /media/fat/Scripts/res/
fi
cd /media/fat/Scripts/res/

debug="0"
function debug {

if [ "$debug" == "1" ]; then
   echo -e "$1"
fi
}

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
  #ls /media/fat/Scripts/res/_Arcade/cores/Klax_*.rbf
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
            else
               echo "ignore $des_arcade/$f" >> /media/fat/Scripts/#insertcoin/out_ignore.txt
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
               #echo -e "\r$des_arcade/$f                                                   "
               cp "$file" "$des_arcade/$f"
            #fi
         fi
      done
   fi
   #echo "cores"
   if [ -d "$cores" ]; 
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
   if [ -d "$altdir" ]; 
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

function rename {
dir="$1"
mra="$2"
renamed="$3"

if [ -f "$dir/$renamed" ]; then
      # La version renommée existe déjà : si l'original est présent, on le supprime
      if [ -f "$dir/$mra" ]; then
         rm "$dir/$mra"
      fi
else
      # Pas encore renommé : on renomme si l'original existe
      if [ -f "$dir/$mra" ]; then
         mv "$dir/$mra" "$dir/$renamed"
      fi
   fi
}

function renexisting {

   #echo "Rename existing"

   #Coc mra
   #Boogie Wings
   rename "/media/fat/_Arcade/_alternatives/_Boogie Wings/" "The Great Ragtime Show (Japan, v1.3, 92.11.26).mra" "The Great Ragtime Show (Japan, v1.3, 92.11.26) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Boogie Wings/" "The Great Ragtime Show (Japan, v1.5, 92.12.07).mra" "The Great Ragtime Show (Japan, v1.5, 92.12.07) (Coc).mra"
   #Caveman Ninja
   rename "/media/fat/_Arcade/_alternatives/_Caveman Ninja" "Caveman Ninja (US, Ver. 4).mra" "Caveman Ninja (US, Ver. 4) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Caveman Ninja" "Caveman Ninja (World, Ver. 1).mra" "Caveman Ninja (World, Ver. 1) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Caveman Ninja" "Tatakae Genshijin Joe & Mac (Japan, Ver. 1).mra" "Tatakae Genshijin Joe & Mac (Japan, Ver. 1) (Coc).mra"
   # Double Wings
   rename "/media/fat/_Arcade/_alternatives/_Double Wings" "Double Wings (World, Set 1).mra" "Double Wings (World, Set 1) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Double Wings" "Double Wings (World, Set 2).mra" "Double Wings (World, Set 2) (Coc).mra"

   #Diet Go Go
   rename "/media/fat/_Arcade/_alternatives/_Diet Go Go" "Diet Go Go (Europe, Set 2).mra" "Diet Go Go (Europe, Set 2) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Diet Go Go" "Diet Go Go (Europe, Set 3).mra" "Diet Go Go (Europe, Set 3) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Diet Go Go" "Diet Go Go (Europe, Set 4).mra" "Diet Go Go (Europe, Set 4) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Diet Go Go" "Diet Go Go (Japan).mra" "Diet Go Go (Japan) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Diet Go Go" "Diet Go Go (USA).mra" "Diet Go Go (USA) (Coc).mra"
   #the cligffhanger
   rename "/media/fat/_Arcade/_alternatives/_The Cliffhanger - Edward Randy" "The Cliffhanger - Edward Randy (Japan, Ver. 3).mra" "The Cliffhanger - Edward Randy (Japan, Ver. 3) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_The Cliffhanger - Edward Randy" "The Cliffhanger - Edward Randy (World, Ver. 1).mra" "The Cliffhanger - Edward Randy (World, Ver. 1) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_The Cliffhanger - Edward Randy" "The Cliffhanger - Edward Randy (World, Ver. 2).mra" "The Cliffhanger - Edward Randy (World, Ver. 2) (Coc).mra"

   #Vapor Trail
   rename "/media/fat/_Arcade/_alternatives/_Vapor Trail" "Kuhga - Operation Code 'Vapor Trail' (Japan, Rev. 3).MRA" "Kuhga - Operation Code 'Vapor Trail' (Japan, Rev. 3) (Coc).mra"
   rename "/media/fat/_Arcade/_alternatives/_Vapor Trail" "Vapor Trail - Hyper Offence Formation (US).mra" "Vapor Trail - Hyper Offence Formation (US) (Coc).mra"

}

echo "Downloading additional res"
dl "res.zip" "Neogeo / IremM92 Turbo mras"
dl "Argus.zip" "Argus"
dl "Atari.zip" "Atari"
dl "asterix.zip" "Asterix"
dl "Banpresto.zip" "Banpresto 68000"
dl "Batsugun.zip" "Batsugun"
dl "Breakthru.zip" "Breakthru"
dl "BuckRodgers.zip" "BuckRodgers"
dl "CowBoys.zip" "Cowboys of Moos Mesa"
#dl "deco16.zip" "Deco 16"
dl "DECOCassette.zip" "Deco Cassette"
dl "EmpireCity.zip" "EmpireCity"
dl "jlrh_OperWolf.zip" "Operation Wolf"
dl "MegaPlay.zip" "SEGA Megaplay"
dl "Psikyo.zip" "Psikyo SH2"
dl "SuperOffroad.zip" "Super Off Road"
dl "SYS11.zip" "Namco System11"
dl "SYS12.zip" "Namco System12"
dl "taitosj.zip" "Taito SJ"
dl "vs.zip" "Nintendo VS"
dl "ZN1.zip" "Namco ZN1"
dl "ZN1Taito.zip" "ZN1 Taito"
dl "Spider-Man.zip" "Spider man the video game"
dl "Ikki.zip" "Ikki"
dl "Gaelco.zip" "Gaelco"
dl "SegaS24.zip" "Sega System 24"

#dl "blahm1d_UMK3.zip" "UMK3"
#dl "blahm1d_SmashTV.zip" "Smash TV"
dl "blahm1d_Rampage.zip" "Rampage"
dl "blahm1d_lkage.zip" "The legend of Kage"
#dl "blahm1d_NBAHangtime.zip" "NBA HAngtime"
dl "blahm1d_NARC.zip" "NARC"
dl "WolfUnit.zip" "Midway Wolf"
dl "DynaGear.zip" "Dynagear"
dl "Universal.zip" "Universal"
dl "KickAndRun.zip" "KickAndRun"
#dl "Rbisland.zip" "Rainbow Islands"
#dl "Raiden.zip" "Raiden"
#dl "Toobin.zip" "Toobin"
#dl "jtkiwi.zip" "Chuka Taisen"
#dl "volfied.zip" "Volfied"
dl "sms.zip" "SMS Sega System-E"
dl "AlphaDenshi.zip" "Alpha Denshi Soccer/Baseball"
dl "Dogyuun.zip" "Dogyuun"
dl "T-Unit.zip" "Midway T-Unit"
dl "Cave68K.zip" "Cave68K"
dl "Raiden2.zip" "Raiden2"
dl "GrindStormer.zip" "GrindStormer"
dl "Guardians.zip" "Guardians"
dl "Bucky.zip" "Bucky O'Hare"
dl "TrogSmashTV.zip" "Trog SmashTV"
dl "TwinHawk.zip" "TwinHawk/Daisenpu"
dl "SegaG80.zip" "SEGA G80 correct core"
dl "SFTM.zip" "Street Fighter The Movie"
dl "SegaS32.zip" "Sega System 32"
dl "Kaneko.zip" "Kaneko Super Nova"

#remove any previous SmashTV file
debug "SmashTV removal"
find "/media/fat/_Arcade" -maxdepth 1 -type f -name "Smash T.V*" -delete
find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Smash T.V*" -exec rm -rf {} +
find "/media/fat/_Arcade/cores" -maxdepth 1 -type f -name "SmashTV*" -delete
#force system32 core
debug "goldenaxe2 removal"
find /media/fat/_Arcade/cores/ -name "s32GoldenAxe.rbf" -delete
find /media/fat/_Arcade/cores/ -name "SegaSystem32_20260815.rbf" -delete

rm -r "/media/fat/_Arcade/_alternatives/_Golden Axe The Revenge of Death Adder"  > /dev/null 2>&1

#force update cowboys of moo mesa
debug "moo mesa removal"
find /media/fat/_Arcade/cores -maxdepth 1 -type f -name "cowboys*.rbf" -delete
find /media/fat/_Arcade -maxdepth 1 -type f -name "Wild West C.O.W.-Boys*.mra" -delete
find /media/fat/_Arcade/ -maxdepth 1 -type f -name "Toobin*.mra" -delete 
debug "toobin removal"
rm -r "/media/fat/_Arcade/_alternatives/_Toobin"  > /dev/null 2>&1
#hidden choice in gunbird2 & s1945iii (psikyo SH2)
debug "Gunbird 2 removal"
find /media/fat/_Arcade/ -maxdepth 1 -type f -name "Gunbird 2*" -delete
find "/media/fat/_Arcade/_alternatives/_Gunbird 2" -maxdepth 1 -type f -name "Gunbird 2 (set 2).mra" -delete > /dev/null 2>&1
find /media/fat/_Arcade/ -maxdepth 1 -type f -name "Strikers 1945 III.mra" -delete
#vsNES
debug "vsNES removal"
find /media/fat/_Arcade/ -maxdepth 1 -type f -name "Vs*" -delete
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Vs*" -delete
find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Vs*" -exec rm -rf {} +
#force chuka jtkiwi
debug "Kiwi removal"
#find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "Chuka*.mra" -delete
#find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "The NewZealand Story*.mra" -delete
#find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "Kageki*.mra" -delete
#find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "Insector X*.mra" -delete
#find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "Extermination*.mra" -delete
#find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "Arkanoid - Revenge of DOH*.mra" -delete
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_The NewZealand Story*" -exec rm -rf {} +
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Kageki*" -exec rm -rf {} +
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Insector X*" -exec rm -rf {} +
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Extermination*" -exec rm -rf {} +
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Dr. Toppel's Adventure*" -exec rm -rf {} +
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Chuka*" -exec rm -rf {} +
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Arkanoid II*" -exec rm -rf {} +
#find "/media/fat/_Arcade/cores" -maxdepth 1 -type f -name "jtkiwi.rbf" -delete
debug "ZN1 Taito removal"
find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Ray Storm" -exec rm -rf {} +
find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "Ray Storm*.mra" -delete
find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_G-Darius" -exec rm -rf {} +
find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Fighters' Impact" -exec rm -rf {} +
#debug "Toobin removal"
#find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "_Toobin" -exec rm -rf {} +
debug "Psikyo removal"
find "/media/fat/_Arcade/" -maxdepth 1 -type f -name "Gunbird 2*" -delete
find "/media/fat/_Arcade/_alternatives/_Gunbird 2" -maxdepth 1 -type f -name "Gunbird 2*" -delete

install

renexisting

echo -e "${GREEN}${CHECK}${NC} Completed"
