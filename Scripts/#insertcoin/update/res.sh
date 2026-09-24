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
shopt -s nullglob
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

# --- Cleanup helpers -------------------------------------------------
# delmra <pattern>  : remove a .mra file directly under /media/fat/_Arcade
# delrbf <pattern>  : remove a .rbf core file under /media/fat/_Arcade/cores
# delalt <pattern>  : remove a whole game folder under /media/fat/_Arcade/_alternatives
# All three take a single -name pattern (globs like "Foo*" are fine) and are
# no-ops when nothing matches (same as the original find calls).

function delmra {
   find "/media/fat/_Arcade" -maxdepth 1 -type f -name "$1" -delete
}

function delrbf {
   find "/media/fat/_Arcade/cores" -maxdepth 1 -type f -name "$1" -delete
}

function delalt {
   find "/media/fat/_Arcade/_alternatives" -maxdepth 1 -type d -name "$1" -exec rm -rf {} +
}

function process {

    case "$1" in

        "SYS11")
            dl "SYS11.zip" "Namco System11"
            debug "SYS11"
            delmra "Dancing Eyes (DC2-VER.B).mra"
            delmra "Dunk Mania (DM2-VER.C).mra"
            delmra "Kosodate Quiz My Angel 3 (KQT1-VER.A).mra"
            delmra "Pocket Racer (Japan PKR1-VER.B).mra"
            delmra "Point Blank 2 (World GNB2-VER.A).mra"
            delmra "Prime Goal EX (PG1-VER.A).mra"
            delmra "Soul Edge Ver. II (SO4-VER.C).mra"
            delmra "Star Sweep (STP1-VER.A).mra"
            delmra "Tekken (TE2 Ver.C).mra"
            delmra "Tekken 2 Ver.B (TES2-VER.D).mra"
            delmra "Xevious 3D-G (XV32-VER.B).mra"
            delrbf "XNSYSTEM11_*.rbf"
            delalt "_Dancing Eyes"
            delalt "_Dunk Mania"
            delalt "_Kosodate Quiz My Angel 3"
            delalt "_Pocket Racer"
            delalt "_Point Blank 2"
            delalt "_Prime Goal EX"
            delalt "_Soul Edge"
            delalt "_Soul Edge Ver. II"
            delalt "_Star Sweep"
            delalt "_Tekken"
            delalt "_Tekken 2"
            delalt "_Xevious 3D-G"
            ;;

        "Asuka")
            dl "Asuka.zip" "Asuka & Asuka"
            debug "Asuka & Asuka"
            delmra "Asuka & Asuka (World, bazset).mra"
            delrbf "Asuka_*.rbf"
            delalt "_Asuka & Asuka"
            ;;

        "Galmedes")
            dl "Galmedes.zip" "Galmedes"
            debug "Galmedes"
            delmra "Galmedes (Japan, bazset).mra"
            delrbf "Galmedes_*.rbf"
            delalt "_Galmedes"
            ;;

        "EarthJoker")
            dl "EarthJoker.zip" "Earth Joker"
            debug "Earth Joker"
            delmra "U.N. Defense Force - Earth Joker (US-Japan, set 1, bazset).mra"
            delrbf "EarthJoker_*.rbf"
            delalt "_U.N. Defense Force - Earth Joker"
            ;;

        "Cadash")
            dl "Cadash.zip" "Cadash"
            debug "Cadash"
            delmra "Cadash (World, bazset).mra"
            delrbf "Cadash_*.rbf"
            delalt "_Cadash"
            ;;

        "MazeOfFlott")
        dl "MazeOfFlott.zip" "Maze Of Flott"
        debug "Maze of Flott"
        delmra "Maze of Flott (Japan, bazset).mra"
        delrbf "MazeOfFlott_*.rbf"
        delalt "_Maze of Flott"
        ;;

	"Fuuki")
        dl "Fuuki.zip" "Fuuki"
        debug "Fuuki"
        delmra "Asura Blade - Sword of Dynasty (Japan).mra"
        delmra "Asura Buster - Eternal Warriors (USA).mra"
        delmra "Gyakuten!! Puzzle Bancho (Japan, set 1).mra"
        delmra "Susume! Mile Smile - Go Go! Mile Smile (newer).mra"
        delrbf "Fuuki_*.rbf"
        delalt "_Asura Blade - Sword of Dynasty (Japan)"
        delalt "_Asura Buster - Eternal Warriors (USA)"
        delalt "_Gyakuten!! Puzzle Bancho (Japan, set 1)"
        delalt "_Susume! Mile Smile - Go Go! Mile Smile (newer)"
        ;;

        "SystemFL")
        dl "SystemFL.zip" "SystemFL"
        debug "SystemFL"
        delmra "Speed Racer.mra"
        delmra "Final Lap R (Rev. B).mra"
        delrbf "XNSYSTEMFL_*.rbf"
        delalt "_Speed Racer"
        delalt "_Final Lap R (Rev. B)"
    ;;

        "WolfUnit")
            dl "WolfUnit.zip" "Midway Wolf"
            debug "WolfUnit removal"
            delmra "Mortal Kombat (Wolf Unit).mra"
            delmra "Mortal Kombat 3 (rev 2.1).mra"
            delmra "Mortal Kombat II (Wolf Unit).mra"
            delmra "NBA Hangtime (L1.3).mra"
            delmra "NBA Maximum Hangtime (L1.03 06-09-97).mra"
            delmra "NHL Open Ice - 2 on 2 Challenge (rev 1.21).mra"
            delmra "Rampage World Tour.mra"
            delmra "Ultimate Mortal Kombat 3.mra"
            delmra "WWF WrestleMania (rev 1.30 08-10-95).mra"
            delrbf "WolfUnit.rbf"
            delalt "_Mortal Kombat"
            delalt "_Mortal Kombat II"
            delalt "_Mortal Kombat 3"
            delalt "_NBAHangtime"
            delalt "_NBA Maximum Hangtime"
            delalt "_NHL Open Ice - 2 on 2 Challenge"
            delalt "_Rampage World Tour"
            delalt "_Ultimate Mortal Kombat 3"
            delalt "_WWF WrestleMania"
            ;;

        "TrogSmashTV")
            dl "TrogSmashTV.zip" "Trog SmashTV"
            debug "SmashTV removal"
            delmra "Smash T.V*"
            delalt "_Smash T.V*"
            delrbf "SmashTV*"
            ;;

        "CowBoys")
            dl "CowBoys.zip" "Cowboys of Moos Mesa"
            debug "moo mesa removal"
            delrbf "cowboys*.rbf"
            delmra "Wild West C.O.W.-Boys*.mra"
            delmra "Toobin*.mra"
            debug "toobin removal"
            delalt "_Toobin"
            ;;

        "PsikyoSH2")
            dl "PsikyoSH2.zip" "Psikyo SH2"
            debug "Psikyo SH2"
            delmra "Daraku Tenshi The Fallen Angels.mra"
            delmra "Dragon Blaze.mra"
            delmra "Gunbarich.mra"
            delmra "Gunbird 2 (set 1).mra"
            delmra "Lode Runner - The Dig Fight (ver. B).mra"
            delmra "Mahjong G-Taste (joystick).mra"
            delmra "Mahjong G-Taste.mra"
            delmra "Mahjong Hot Gimmick Integral (Japan).mra"
            delmra "Quiz de Idol! Hot Debut (Japan).mra"
            delmra "Sol Divide Sword Of Darkness.mra"
            delmra "Space Bomber (ver. B).mra"
            delmra "Strikers 1945 II.mra"
            delmra "Strikers 1945 III.mra"
            delmra "Taisen Hot Gimmick (Japan).mra"
            delmra "Taisen Hot Gimmick 3 Digital Surfing (Japan).mra"
            delmra "Taisen Hot Gimmick 4 Ever (Japan).mra"
            delmra "Taisen Hot Gimmick Kairakuten (Japan).mra"
            delmra "Tetris The Absolute - The Grand Master 2.mra"
            delrbf "PsikyoSH2_*"
            delalt "_Daraku Tenshi The Fallen Angels"
            delalt "_Dragon Blaze"
            delalt "_Gunbarich"
            delalt "_Gunbird 2"
            delalt "_Lode Runner - The Dig Fight"
            delalt "_Mahjong G-Taste"
            delalt "_Mahjong Hot Gimmick Integral"
            delalt "_Quiz de Idol! Hot Debut"
            delalt "_Sol Divide Sword Of Darkness"
            delalt "_Space Bomber"
            delalt "_Strikers 1945 II"
            delalt "_Strikers 1945 III"
            delalt "_Taisen Hot Gimmick"
            delalt "_Taisen Hot Gimmick 3 Digital Surfing"
            delalt "_Taisen Hot Gimmick 4 Ever"
            delalt "_Taisen Hot Gimmick Kairakuten"
            delalt "_Tetris The Absolute - The Grand Master 2"
            ;;

        "vs")
            dl "vs.zip" "Nintendo VS"
            debug "vsNES removal"
            delmra "Vs*"
            delalt "_Vs*"
            ;;

        "jtkiwi")
            debug "Kiwi"
            #delmra "Chuka*.mra"
            #delmra "The NewZealand Story*.mra"
            #delmra "Kageki*.mra"
            #delmra "Insector X*.mra"
            #delmra "Extermination*.mra"
            #delmra "Arkanoid - Revenge of DOH*.mra"
            delrbf "jtkiwi.rbf"
            delalt "_The NewZealand Story*"
            delalt "_Kageki*"
            delalt "_Insector X*"
            delalt "_Extermination*"
            delalt "_Dr. Toppel's Adventure*"
            delalt "_Chuka*"
            delalt "_Arkanoid II*"
            ;;

        "ZN1Taito")
            dl "ZN1Taito.zip" "ZN1 Taito"
            debug "ZN1 Taito removal"
            delmra "G-Darius*.mra"
            delmra "Fighters Impact*.mra"
            delmra "Ray Storm*.mra"
            delrbf "XNZN1TaitoFX1B_*.rbf"
            delalt "_G-Darius"
            delalt "_Fighters' Impact"
            delalt "_Ray Storm"
            ;;

        "SYS12")
            dl "SYS12.zip" "Namco System12"
            debug "System12"
            delmra "Ehrgeiz (World, EG2-VER.A).mra"
            delmra "Fighting Layer (Asia, FTL3-VER.A).mra"
            delmra "Libero Grande (World LG2-VER.A).mra"
            delmra "Oh! Bakyuuun (Japan OB1-VER.A).mra"
            delmra "Soul Calibur (World SOC12-VER.A2).mra"
            delmra "Super World Stadium '98 (Japan SS81-VER.A).mra"
            delmra "Super World Stadium '99 (Japan SS91-VER.A3).mra"
            delmra "Tekken 3 (World TET2-VER.E1).mra"
            delrbf "SYSTEM12_*.rbf" 
            delalt "_Ehrgeiz"
            delalt "_Fighting Layer"
            delalt "_Libero Grande"
            delalt "_Oh! Bakyuuun"
            delalt "_Soul Calibur"
            delalt "_Super World Stadium '98 (Japan SS81-VER.A)"
            delalt "_Super World Stadium '99"
            delalt "_Tekken 3"
            ;;

        "SSV")
            dl "SSV.zip" "SSV"
            debug "SSV"
            #sammy
            delmra "Change Air Blade.mra"
            delmra "Dyna Gear.mra"
            #seta
            delmra "Twin Eagle II - The Rescue Mission.mra"
            delmra "Ultra X Weapons - Ultra Keibitai.mra"
            #visco
            delmra "Drift Out '94 - The Hard Order.mra"
            delmra "Monster Slider.mra"
            delmra "Storm Blade.mra"
            delmra "Vasara.mra"
            delmra "Vasara 2.mra"
            #

            delrbf "SSV_*.rbf"
            #sammy
            delalt "_Change Air Blade"
            delalt "_Dyna Gear"
            #seta
            delalt "_Twin Eagle II - The Rescue Mission"
            delalt "_Ultra X Weapons - Ultra Keibitai"
            #visco
            delalt "_Drift Out '94 - The Hard Order"
            delalt "_Monster Slider"
            delalt "_Storm Blade"
            delalt "_Vasara"
            delalt "_Vasara 2"
            ;;

        "Seibu")
            dl "Seibu.zip" "Seibu Kaihatsu"
            debug "Seibu"
            delmra "E Jong High School (Japan).mra"
            delmra "Raiden Fighters (Germany).mra"
            delmra "Raiden Fighters 2 - Operation Hell Dive (Germany).mra"
            delmra "Raiden Fighters Jet (Germany).mra"
            delmra "Senkyu (Japan, newer).mra"
            delmra "Viper Phase 1 (New Version, World).mra"
            delalt "_Raiden Fighters"
            delalt "_Raiden Fighters 2 - Operation Hell Dive"
            delalt "_Raiden Fighters Jet"
            delalt "_Senkyu"
            delalt "_Viper Phase 1"
            delrbf "SeibuSPI.rbf"
            ;;

        "Psikyo")
            dl "Psikyo.zip" "Psikyo 1st gen"
            debug "Psikyo"
            delmra "Battle K-Road.mra"
            delmra "Gunbird (World).mra"
            delmra "Samurai Aces (World).mra"
            delmra "Strikers 1945 (World).mra"
            delmra "Tengai (World).mra"
            delalt "_Battle K-Road"
            delalt "_Gunbird"
            delalt "_Samurai Aces"
            delalt "_Strikers 1945"
            delalt "_Tengai"
            ;;

        "PunchOut")
            dl "PunchOut.zip" "Punch Out/Super Punch Out"
            debug "Punch Out/Super Punch Out"
            delmra "Arm Wrestling.mra"
            delmra "Punch-Out!! (Rev B).mra"
            delmra "Super Punch-Out!! (Rev B).mra"
            delalt "_Punch-Out!!"
            delalt "_Super Punch-Out!!"
            delalt "_Arm Wrestling"
            delrbf "Punchout_*.rbf"
            ;;

        "Vindicators")
            dl "Vindicators.zip" "Vindicators"
            debug "Vindicators"
            delmra "Vindicators.mra"
            delalt "_Vindicators"
            delrbf "Vindicators_*.rbf"
            ;;

        "IRobot")
            dl "IRobot.zip" "I, Robot"
            debug "I, Robot"
            delmra "I, Robot.mra"
            delrbf "I-Robot_*.rbf"
            delalt "_I, Robot"
            ;;

        "Model1")
            dl "SegaModel1.zip" "Sega Model1"
            debug "Sega Model1"
            delmra "Wing War.mra"
            delmra "Virtua Racing.mra"
            delmra "Virtua Fighter.mra"
            delmra "Star Wars Arcade.mra"
            delrbf "Model1_*.rbf"
            delalt "_Wing War"
            delalt "_Virtua Racing"
            delalt "_Star Wars Arcade"
            ;;

        "SunA")
            dl "SunA.zip" "SunA"
            debug "Suna"
            delmra "Brick Zone.mra"
            delmra "Hard Head.mra"
            delmra "Hard Head 2.mra"
            delrbf "Suna8bit*.rbf"
            delalt "_Brick Zone"
            delalt "_Hard Head"
            delalt "_Hard Head 2"
            ;;

        "TaitoF3")
            dl "TaitoF3.zip" "Taito F3"
            debug "TaitoF3"
            delmra "Arabian Magic.mra"
            delmra "Arkanoid Returns.mra"
            delmra "Bubble Bobble II.mra"
            delmra "Bubble Memories.mra"
            delmra "Cleopatra Fortune.mra"
            delmra "Command War.mra"
            delmra "Dan-Ku-Ga.mra"
            delmra "Darius Gaiden.mra"
            delmra "Elevator Action Returns.mra"
            delmra "Gekirindan.mra"
            delmra "Grid Seeker.mra"
            delmra "International Cup 94.mra"
            delmra "Kaiser Knuckle.mra"
            delmra "Land Maker.mra"
            delmra "Light Bringer.mra"
            delmra "Pop 'n Pop.mra"
            delmra "Puchi Carat.mra"
            delmra "Puzzle Bobble 2.mra"
            delmra "Puzzle Bobble 3.mra"
            delmra "Puzzle Bobble 4.mra"
            delmra "Quiz de Hyuuhyuu.mra"
            delmra "Quiz Theater.mra"
            delmra "Ray Force.mra"
            delmra "Recalhorn.mra"
            delmra "Riding Fight.mra"
            delmra "Ring Rage.mra"
            delmra "Space Invaders '95.mra"
            delmra "Super Cup Finals.mra"
            delmra "Taito Cup Finals.mra"
            delmra "Taito Power Goal.mra"
            delmra "Top Ranking Stars.mra"
            delmra "Twin Cobra II.mra"
            delmra "Twin Qix.mra"
            delrbf "Rayforce_*.rbf"
            delalt "_Arabian Magic"
            delalt "_Arkanoid Returns"
            delalt "_Bubble Bobble II"
            delalt "_Bubble Memories"
            delalt "_Cleopatra Fortune"
            delalt "_Command War"
            delalt "_Dan-Ku-Ga"
            delalt "_Darius Gaiden"
            delalt "_Elevator Action Returns"
            delalt "_Gekirindan"
            delalt "_Grid Seeker"
            delalt "_International Cup 94"
            delalt "_Kaiser Knuckle"
            delalt "_Land Maker"
            delalt "_Light Bringer"
            delalt "_Pop 'n Pop"
            delalt "_Puchi Carat"
            delalt "_Puzzle Bobble 2"
            delalt "_Puzzle Bobble 3"
            delalt "_Puzzle Bobble 4"
            delalt "_Quiz de Hyuuhyuu"
            delalt "_Quiz Theater"
            delalt "_Ray Force"
            delalt "_Recalhorn"
            delalt "_Riding Fight"
            delalt "_Ring Rage"
            delalt "_Space Invaders '95"
            delalt "_Super Cup Finals"
            delalt "_Taito Cup Finals"
            delalt "_Taito Power Goal"
            delalt "_Top Ranking Stars"
            delalt "_Twin Cobra II"
            delalt "_Twin Qix"
            ;;

        "SYS22")
            dl "SYS22.zip" "Namco System22"
            debug "System22"
            delmra "Prop Cycle (World, PR2 Ver.A).mra"
            delmra "Rave Racer (World, RV2 Ver.B).mra"
            delmra "Ridge Racer (World, RR2).mra"
            delmra "Ridge Racer 2 (World, RRS2).mra"
            delmra "Time Crisis (World, TS2 Ver.B).mra"
            delrbf "XNSUPER22_20260913.rbf"
            delrbf "XNSYSTEM22_20260913.rbf"
            delalt "_Prop Cycle"
            delalt "_Rave Racer"
            delalt "_Ridge Racer"
            delalt "_Ridge Racer 2"
            delalt "_Time Crisis"
            ;;

        "SegaS32")
            dl "SegaS32.zip" "Sega System 32"
            debug "goldenaxe2 removal"
            delrbf "s32GoldenAxe.rbf"
            delrbf "SegaSystem32_20260815.rbf"
            delalt "_Golden Axe The Revenge of Death Adder"
            debug "Sega System12"
            delmra "Alien3 The Gun (World).mra"
            delmra "Arabian Fight (World).mra"
            delmra "Burning Rival (World).mra"
            delmra "Dark Edge (World).mra"
            delmra "Golden Axe The Revenge of Death Adder (World, Rev B).mra"
            delmra "Holosseum (US, Rev A).mra"
            delmra "Jurassic Park (World, Rev A).mra"
            delmra "Rad Rally (World).mra"
            delmra "Slip Stream (Brazil 950515).mra"
            delmra "Spider-Man The Videogame (World).mra"
            delmra "Super Visual Football European Sega Cup (Rev A).mra"
            delmra "Super Visual Soccer Sega Cup (US, Rev A).mra"
            delmra "The J.League 1994 (Japan).mra"
            delalt "_Alien3 The Gun"
            delalt "_Arabian Fight"
            delalt "_Burning Rival"
            delalt "_Dark Edge"
            delalt "_Golden Axe The Revenge of Death Adder"
            delalt "_Holosseum"
            delalt "_Jurassic Park"
            delalt "_Rad Rally"
            delalt "_Slip Stream"
            delalt "_Spider-Man The Videogame"
            delalt "_Super Visual Football European Sega Cup"
            delalt "_Super Visual Soccer Sega Cup"
            delalt "_The J.League 1994"
            ;;

        "res")
            dl "res.zip" "Neogeo / IremM92 Turbo mras"
            ;;

        "Argus")
            dl "Argus.zip" "Argus"
            debug "The legend of Kage"
            delmra "The Legend of Kage (bootleg set 1).mra"
            delrbf "LegendOfKage_*.rbf"
            delalt "_The legend of Kage"
            ;;

        "asterix")
            dl "asterix.zip" "Asterix"
            debug "Asterix"
            delmra "Asterix (FF ver EAD).mra"
            delrbf "asterix_*.rbf"
            delalt "_Asterix"
            ;;

        "Atari")
            dl "Atari.zip" "Atari"
            ;;

        "Banpresto")
            dl "Banpresto.zip" "Banpresto 68000"
            debug "Banpresto"
            delmra "Mazinger Z (Japan) (Coc).mra"
            delmra "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan) (Coc).mra"
            delmra "Akuu Gallet (Japan) (Coc).mra"
            delrbf "sailormn_mister_*.rbf"
            delrbf "mazinger_mister_*.rbf"
            delrbf "agallet_mister_*.rbf"
            delalt "_Pretty Soldier Sailor Moon"
            delalt "_Mazinger Z"
            delalt "_Air Gallet"

            ;;

        "Batsugun")
            dl "Batsugun.zip" "Batsugun"
            debug "Batsugun"
            delmra "Batsugun.mra"
            delrbf "Batsugun_*.rbf"
            delalt "_Batsugun"
            ;;

        "blahm1d_lkage")
            dl "blahm1d_lkage.zip" "The legend of Kage"
            debug "The legend of Kage"
            delmra "The Legend of Kage (bootleg set 1).mra"
            delrbf "LegendOfKage_*.rbf"
            delalt "_The legend of Kage"
            ;;

        "blahm1d_NARC")
            dl "blahm1d_NARC.zip" "NARC"
            debug "NARC"
            delmra "Narc (rev 7.00) [DDR3 v9].mra"
            delrbf "Arcade-NARC-v9.rbf"
            delalt "_NARC"
            ;;

        "blahm1d_Rampage")
            dl "blahm1d_Rampage.zip" "Rampage World Tour"
            debug "Rampage World Tour"
            delmra "Rampage World Tour.mra"
            delrbf "RampageWT-2E.rbf"
            delalt "_Rampage World Tour"
            ;;

        "Breakthru")
            dl "Breakthru.zip" "Breakthru"
            debug "Breakthru"
            delmra "Break Thru (World).mra"
            delrbf "xnbrkthru_*.rbf"
            delalt "_Breakthru"
            ;;

        "BuckRodgers")
            dl "BuckRodgers.zip" "BuckRodgers"
            debug "BuckRodgers"
            delmra "Buck Rogers Planet of Zoom (not encrypted, set 1).mra"
            delrbf "SegaVCO_*.rbf"
            delalt "_Buck Rogers Planet of Zoom"
            ;;

        "Bucky")
            dl "Bucky.zip" "Bucky O'Hare"

            debug "Ikki"
            delmra "Bucky O'Hare.mra"
            delrbf "Bucky_*.rbf"
            delalt "_Bucky O'Hare"
            ;;

        "Cave68K")
            dl "Cave68K.zip" "Cave68K"
            ;;

        "DECOCassette")
            dl "DECOCassette.zip" "Deco Cassette"
            debug "EmpireCity"
            delmra "Tornado (DECO).mra"
            delmra "The Tower (DECO).mra"
            delmra "Terranean (DECO).mra"
            delmra "Sweet Heart (DECO).mra"
            delmra "Super Doubles Tennis (DECO).mra"
            delmra "Super Astro Fighter (DECO).mra"
            delmra "Skater (DECO).mra"
            delmra "Scrum Try (set 2) (DECO).mra"
            delmra "Scrum Try (DECO).mra"
            delmra "Rootin' Tootin' (DECO).mra"
            delmra "Pro Tennis (Japan) (DECO).mra"
            delmra "Pro Tennis (DECO).mra"
            delmra "Pro Soccer (Japan) (DECO).mra"
            delmra "Pro Soccer (DECO).mra"
            delmra "Pro Golf (Japan) (DECO).mra"
            delmra "Pro Golf (DECO).mra"
            delmra "Pro Bowling (DECO).mra"
            delmra "Peter Pepper's Ice Cream Factory (set 2) (DECO).mra"
            delmra "Peter Pepper's Ice Cream Factory (DECO).mra"
            delmra "Oozumou - Grand Sumo (DECO).mra"
            delmra "Ocean to Ocean (Japan) (DECO).mra"
            delmra "Ocean to Ocean (DECO).mra"
            delmra "Night Star (set 2) (DECO).mra"
            delmra "Night Star (DECO).mra"
            delmra "Night Slashers (Japan Rev 1.2, DE-0397-0 PCB).mra"
            delmra "Nebula (DECO).mra"
            delmra "Mission-X (DECO).mra"
            delmra "Manhattan (Japan) (DECO).mra"
            delmra "Lucky Poker (DECO).mra"
            delmra "Lock'n'Chase (Japan) (DECO).mra"
            delmra "Lock'n'Chase (DECO).mra"
            delmra "La-Pa-Pa (DECO).mra"
            delmra "Highway Chase (DECO).mra"
            delmra "Hamburger (Japan) (DECO).mra"
            delmra "Graplop (Prototype) (DECO).mra"
            delmra "Graplop (Japan) (DECO).mra"
            delmra "Flying Ball (DECO).mra"
            delmra "Flash Boy (DECO).mra"
            delmra "Fishing (Japan) (DECO).mra"
            delmra "Fighting Ice Hockey (DECO).mra"
            delmra "DS Telejan (DECO).mra"
            delmra "Disco No.1 (DECO).mra"
            delmra "DECO Test Tape (DECO).mra"
            delmra "DECO Darksoft Multigame (v16) (DECO).mra"
            delmra "DECO Darksoft Multigame (v15) (DECO).mra"
            delmra "DECO Darksoft Multigame (DECO).mra"
            delmra "Cluster Buster (DECO).mra"
            delmra "Burnin Rubber (set 2) (DECO).mra"
            delmra "Burnin Rubber (Japan) (DECO).mra"
            delmra "Burger Time (DECO).mra"
            delmra "Bump 'n' Jump (DECO).mra"
            delmra "Boulder Dash (DECO).mra"
            delmra "Astro Fantasia (DECO).mra"
            delmra "Angler Dangler (DECO).mra"
            delmra "18 Challenge Pro Golf (DECO).mra"
            delrbf "DECOCassette_*.rbf"
            delalt "_Deco-Cassette"
            ;;

        "Dogyuun")
            dl "Dogyuun.zip" "Dogyuun"
            debug "Dogyuun"
            delmra "Dogyuun.mra"
            delrbf "Dogyuun.rbf"
            delalt "_Dogyuun"
            ;;

        "EmpireCity")
            dl "EmpireCity.zip" "EmpireCity"
            debug "EmpireCity"
            delmra "Empire City.mra"
            delrbf "empirecity_*.rbf"
            delalt "_Empire City"
            ;;



        "Gaelco")
            dl "Gaelco.zip" "Gaelco"
            debug "Gaelco"
            delmra "World Rally Championship (set 2).mra"
            delmra "Thunder Hoop.mra"
            delmra "Thunder Hoop (ver. 1, checksum 02a09f7d).mra"
            delmra "TH Strikes Back.mra"
            delmra "Squash.mra"
            delmra "Squash (World, ver. 1.0, checksum 015aef61).mra"
            delmra "Glass.mra"
            delmra "Alligator Hunt.mra"
            delrbf "wrally.rbf"
            delrbf "jtthundr.rbf"
            delrbf "jtthoop2.rbf"
            delrbf "jtthoop.rbf"
            delrbf "jtsquash.rbf"
            delrbf "jtaligator.rbf"
            delrbf "glass_*.rbf"
            delalt "_Alligator Hunt"
            delalt "_Biomechanical Toy"
            delalt  "_Glass"
            delalt  "_Squash"
            delalt  "_TH Strikes Back"
            delalt  "_Thunder Hoop"
            delalt  "_World Rally Championship"
            ;;

        "GrindStormer")
            dl "GrindStormer.zip" "GrindStormer"
            debug "GrindStormer"
            delmra "Grind Stormer.mra"
            delrbf "GrindStormer_*.rbf"
            delalt "_Grind Stormer"
            ;;



        "Guardians")
            dl "Guardians.zip" "Guardians"
            debug "Guardians"
            delmra "Guardians - Denjin Makai II (P-FG01-1 PCB).mra"
            delrbf "Guardians_*.rbf"
            delalt "_Guardians"
            ;;

        "Ikki")
            dl "Ikki.zip" "Ikki"
            debug "Ikki"
            delmra "Ikki.mra"
            delrbf "Ikki*.rbf"
            delalt "_Ikki"
            ;;

        "jlrh_OperWolf")
            dl "jlrh_OperWolf.zip" "Operation Wolf"
            ;;

        "Kaneko")
            dl "Kaneko.zip" "Kaneko Super Nova"
            ;;

        "Kaneko16")
            dl "Kaneko16.zip" "Kaneko 16"
            ;;

        "KickAndRun")
            dl "KickAndRun.zip" "KickAndRun"
            ;;

        "MegaPlay")
            dl "MegaPlay.zip" "SEGA Megaplay"
            ;;

        "SegaG80")
            dl "SegaG80.zip" "SEGA G80 correct core"
            ;;

        "SegaS24")
            dl "SegaS24.zip" "Sega System 24"
            ;;

        "SFTM")
            dl "SFTM.zip" "Street Fighter The Movie"
            ;;

        "sms")
            dl "sms.zip" "SMS Sega System-E"
            ;;

        "Spider-Man")
            dl "Spider-Man.zip" "Spider man the video game"
            ;;


        "SuperOffroad")
            dl "SuperOffroad.zip" "Super Off Road"
            ;;

        "taitosj")
            dl "taitosj.zip" "Taito SJ"
            ;;

        "T-Unit")
            dl "T-Unit.zip" "Midway T-Unit"
            ;;

        "TwinHawk")
            dl "TwinHawk.zip" "TwinHawk/Daisenpu"
            ;;

        "Universal")
            dl "Universal.zip" "Universal"
            ;;

        "KillerInstinct")
            dl "KillerInstinct.zip" "Killer Instinct"
            ;;

        "CaveCV1K")
            dl "CaveCV1K.zip" "Cave CV1K"
            debug "Cave CV1K"

            delmra "Akai Katana*.mra"
            delmra "Deathsmiles*.mra"
            delmra "DoDonPachi Dai-Fukkatsu*.mra"
            delmra "DoDonPachi SaiDaiOuJou*.mra"
            delmra "Espgaluda II*.mra"
            delmra "Ibara*.mra"
            delmra "Muchi Muchi Pork*.mra"
            delmra "Mushihime-Sama*.mra"
            delmra "Pink Sweets*.mra"
            delmra "Puzzle! Mushihime-Tama*.mra"
            delalt "_DoDonPachi Dai-Fukkatsu"
            delalt "_DoDonPachi SaiDaiOuJou"
            delalt "_Espgaluda II"
            delalt "_Ibara"
            delalt "_Mushihime-Sama"
            delalt "_Mushihime-Sama Futari"
            delalt "_Pink Sweets Ibara Sorekara"
            delalt "_Puzzle! Mushihime-Tama"

            ;;

        "EscapeRobotMonster")
            dl "EscapeRobotMonster.zip" "Escape From The Planet of the robot monsters"
            ;;

        "ZN1Namco")
            dl "ZN1Namco.zip" "ZN1 Namco"
            ;;

        "ZN1Capcom")
            dl "ZN1Capcom.zip" "ZN1 Capcom"
            ;;

        "ZN2")
            dl "ZN2.zip" "ZN2 Capcom"
            ;;

        "EscKids")
            dl "EscKids.zip" "Escape Kids"
            ;;

        "SpaceHarrier")
            dl "SpaceHarrier.zip" "Space Harrier"
            ;;

        "XYBots")
            dl "XYBots.zip" "XY Bots"
            ;;

        "SegaYBoard")
            dl "SegaYBoard.zip" "Sega YBoard"
            ;;

        "HardDrivin")
            dl "HardDrivin.zip" "Hard Drivin'"
            ;;

        "Jaleco MS32")
            dl "JalecoMS32.zip" "Jaleco MS32"
            debug "Jaleco MS32"
            delmra "Best Bout Boxing (ver 1.3).mra"
            delmra "Desert War - Wangan Sensou (ver 1.0).mra"
            delmra "Gratia - Second Earth (ver 1.0, 92047-01 version).mra"
            delmra "Hayaoshi Quiz Grand Champion Taikai.mra"
            delmra "Hayaoshi Quiz Nettou Namahousou (ver 1.5).mra"
            delmra "Idol Janshi Suchie-Pai II (ver 1.1).mra"
            delmra "Mahjong Angel Kiss (ver 1.0, 92047-01 version).mra"
            delmra "P-47 Aces (ver 1.1).mra"
            delmra "Ryuusei Janshi Kirara Star (ver 1.0, 92047-01 version).mra"
            delmra "Tetris Plus (ver 1.0).mra"
            delmra "Tetris Plus 2 (ver 1.0, MegaSystem 32 Version).mra"
            delmra "The Game Paradise - Master of Shooting! (ver 1.0).mra"
            delmra "Vs. Janshi Brandnew Stars (Ver 1.1, MegaSystem 32 Version).mra"
            delmra "World PK Soccer V2 (ver 1.1).mra"
            delrbf "JalecoMS32_*.rbf"
            delalt "_Best Bout Boxing"
            delalt "_Desert War - Wangan Sensou"
            delalt "_Gratia - Second Earth"
            delalt "_Hayaoshi Quiz Grand Champion Taika"
            delalt "_Hayaoshi Quiz Nettou Namahousou"
            delalt "_Idol Janshi Suchie-Pai II"
            delalt "_Mahjong Angel Kiss"
            delalt "_P-47 Aces"
            delalt "_Ryuusei Janshi Kirara Star"
            delalt "_Tetris Plus"
            delalt "_Tetris Plus 2"
            delalt "_The Game Paradise - Master of Shooting!"
            delalt "_Vs. Janshi Brandnew Stars"
            delalt "_World PK Soccer V2"
            ;;

        "OutRunners")
            dl "Outrunners.zip" "OutRunners"
            debug "OutRunners"
            delmra "OutRunners.mra"
            delrbf "SegaSystem32Multi_*"
            delalt "_Outrunners"
            ;;

        "MadGear")
            dl "MadGear.zip" "MadGear/LED Storm"
            debug "MadGear"
            delmra "Mad Gear (US).mra"
            delmra "Led Storm Rally 2011 (World).mra"
            delmra "Last Duel (US New Ver.).mra"
            delrbf "madgear_*.rbf"
            delrbf "lastduel_*.rbf"
            delalt "_Mad Gear"
            delalt "_Led Storm Rally 2011"
            delalt "_Last Duel"
            ;;

        "Blasteroids")
            dl "Blasteroids.zip" "Blasteroids"
            debug "Blasteroids"
            delmra "Blasteroids.mra"
            delalt "_Blasteroids"
            ;;

        "Badlands")
            dl "Badlands.zip" "Badlands"
            debug "Badlands"
            delmra "Badlands.mra"
            delalt "_Badlands"
            ;;

        "MrDo")
            dl "MrDo.zip" "Mr Do games"
            debug "MrDo"
            delmra "Do! Run Run.mra"
            delmra "Mr. Do's Wild Ride.mra"
            delmra "Mr. Do's Castle.mra"
            delrbf "DoCastle_*.rbf"
            delalt "_Do! Run Run"
            delalt "_Mr. Do's Wild Ride"
            delalt "_Mr. Do's Castle"
            ;;

        "BonzeAdventure")
            dl "BonzeAdventure.zip" "Bonze Adventure"
            debug "BonzeAdventure"
            delmra "Bonze Adventure (World, bazset).mra"
            delrbf "BonzeAdventure_*.rbf"
            delalt "_Bonze Adventure"
            ;;

        "DrMicro")
            dl "DrMicro.zip" "Dr. Micro"
            debug "DrMicro"
            delmra "Dr. Micro.mra"
            delrbf "DrMicro_*.rbf"
            delalt "_Dr. Micro"
            ;;

        *)
            echo "Unknown process: $1"
            ;;

    esac
}

process "SYS11"
process "WolfUnit"
process "TrogSmashTV"
process "CowBoys"
process "PsikyoSH2"
process "vs"
process "jtkiwi"
process "ZN1Taito"
process "SYS12"
process "SSV"
process "Seibu"
process "Psikyo"
process "PunchOut"
#process "Vindicators"
process "IRobot"
process "Model1"
process "SunA"
process "TaitoF3"
process "SYS22"
process "SegaS32"
process "res"
process "Argus"
process "asterix"
process "Atari"
process "Banpresto"
process "Batsugun"
process "blahm1d_lkage"
process "blahm1d_NARC"
process "blahm1d_Rampage"
process "Breakthru"
process "BuckRodgers"
process "Bucky"
process "Cave68K"
process "DECOCassette"
process "Dogyuun"
process "EmpireCity"
process "Gaelco"
process "GrindStormer"
process "Guardians"
process "Ikki"
process "jlrh_OperWolf"
process "Kaneko"
process "Kaneko16"
process "KickAndRun"
process "MegaPlay"
process "SegaG80"
process "SegaS24"
process "SFTM"
process "sms"
process "Spider-Man"
process "SuperOffroad"
process "taitosj"
process "T-Unit"
process "TwinHawk"
process "Universal"
process "KillerInstinct"
process "CaveCV1K"
process "EscapeRobotMonster"
process "ZN1Namco"
process "ZN1Capcom"
process "ZN2"
process "EscKids"
process "SpaceHarrier"
#process "XYBots"
process "SegaYBoard"
process "HardDrivin"
process "Jaleco MS32"
process "OutRunners"
process "MadGear"
#process "Blasteroids"
#process "Badlands"
process "MrDo"
process "BonzeAdventure"
process "DrMicro"
process "Asuka"
process "Galmedes"
process "EarthJoker"
process "Cadash"
process "MazeOfFlott"
process "Fuuki"
process "SystemFL"

install

renexisting

echo -e "${GREEN}${CHECK}${NC} Completed res"
