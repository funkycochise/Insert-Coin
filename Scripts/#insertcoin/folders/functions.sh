BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'     
LIGHTRED='\033[1;31m'          
LIGHTGREEN='\033[1;32m'        
YELLOW='\033[1;33m'       
LIGHTBLUE='\033[1;34m'         
LIGHTPURPLE='\033[1;35m'       
LIGHTCYAN='\033[1;36m'        
WHITE='\033[1;37m'
NC='\033[0m' # No Color

if [ "$TERM" == "xterm" ]; then
   CHECK="✓"
   TAB=""
else
   CHECK="•"
   #CHECK="»"
   TAB="  "
fi

#CHECK="\xE2\x9C\x94"
#CROSS="\xE2\x9D\x8C"

names=/media/fat/Scripts/#insertcoin/names.ini

ARCADE=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives
CORE=/media/fat/_Arcade/Cores
CONSOLE=/media/fat/_Console


#get setup settings
ini=/media/fat/Scripts/#insertcoin/setup.ini

debug="0"

function loadnames {

names=/media/fat/Scripts/#insertcoin/names.ini

   if [ -f "$names" ];
   then
      source <(grep genre_action $names)
      source <(grep genre_beat $names)
      source <(grep genre_sport $names)
      source <(grep genre_puzzle $names)
      source <(grep genre_vsf $names)
      source <(grep genre_stg_h $names)
      source <(grep genre_stg_v $names)
      source <(grep genre_rng_h $names)
      source <(grep genre_rng_v $names)
      source <(grep genre_horizontal $names)
      source <(grep genre_vertical $names)

   fi
   #echo "genre_horizontal: $genre_horizontal"
   #echo "genre_vertical: $genre_vertical"
   #echo "genre_act: $genre_action"
   #echo "genre_beat: $genre_beat"
   #echo "genre_sport: $genre_sport"
   #echo "genre_puzzle: $genre_puzzle"
   #echo "genre_vsf: $genre_vsf"
   #echo "genre_stg_h: $genre_stg_h"
   #echo "genre_stg_v: $genre_stg_v"
   #echo "genre_rng_h: $genre_rng_h"
   #echo "genre_rng_v: $genre_rng_v"
}

function loadsetup {

forcemode=$1

source <(grep essential $ini)
essential=${essential:0:1}
#if [ "$debug" == "1" ]; then
#   echo "essential: $essential" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep rootfolder $ini)
rootfolder=${rootfolder:0:1}
#if [ "$debug" == "1" ]; then
#   echo "rootfolder: $rootfolder" >> /media/fat/Scripts/#insertcoin/out.txt
#fi

source <(grep show_system $ini)
show_system=${show_system:0:1}
#if [ "$debug" == "1" ]; then
#   echo "show_system: $show_system" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep show_genre $ini)
show_genre=${show_genre:0:1}
#if [ "$debug" == "1" ]; then
#   echo "show_genre: $show_genre" >> /media/fat/Scripts/#insertcoin/out.txt
#fi

source <(grep manufacturer_subfolder $ini)
manufacturer_subfolder=${manufacturer_subfolder:0:1}
#if [ "$debug" == "1" ]; then
#   echo "manufacturer_subfolder: $manufacturer_subfolder" >> /media/fat/Scripts/#insertcoin/out.txt
#fi

source <(grep action $ini)
action=${action:0:1}
#if [ "$debug" == "1" ]; then
#   echo "action: $action" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep beat $ini)
beat=${beat:0:1}
#if [ "$debug" == "1" ]; then
#   echo "beat: $beat" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep puzzle $ini)
puzzle=${puzzle:0:1}
#if [ "$debug" == "1" ]; then
#   echo "puzzle: $puzzle" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep sport $ini)
sport=${sport:0:1}
#if [ "$debug" == "1" ]; then
#   echo "sport: $sport" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep vsf $ini)
vsf=${vsf:0:1}
#if [ "$debug" == "1" ]; then
#   echo "vsf: $vsf" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep stg_h $ini)
stg_h=${stg_h:0:1}
#if [ "$debug" == "1" ]; then
#   echo "stg_h: $stg_h" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep stg_v $ini)
stg_v=${stg_v:0:1}
#if [ "$debug" == "1" ]; then
#   echo "stg_v: $stg_v" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep rng_h $ini)
rng_h=${rng_h:0:1}
#if [ "$debug" == "1" ]; then
#   echo "rng_h: $rng_h" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep rng_v $ini)
rng_v=${rng_v:0:1}
#if [ "$debug" == "1" ]; then
#   echo "rng_v: $rng_v" >> /media/fat/Scripts/#insertcoin/out.txt
#fi

source <(grep horizontal $ini)
horizontal=${horizontal:0:1}
#if [ "$debug" == "1" ]; then
#   echo "horizontal: $horizontal"
#fi
source <(grep vertical $ini)
vertical=${vertical:0:1}
#if [ "$debug" == "1" ]; then
# echo "vertical: $vertical" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep newest $ini)
newest=${newest:0:1}
#if [ "$debug" == "1" ]; then
#   echo "newest: $newest" >> /media/fat/Scripts/#insertcoin/out.txt
#fi
source <(grep add_resources $ini)
add_resources=${add_resources:0:1}
source <(grep mame_rom $ini)
mame_rom=${mame_rom:0:1}
#if [ "$debug" == "1" ]; then
#   echo "mame_rom: $mame_rom"
#fi
source <(grep gnw_rom $ini)
gnw_rom=${gnw_rom:0:1}
#if [ "$debug" == "1" ]; then
#   echo "gnw_rom: $gnw_rom"
#fi
source <(grep console_mgl $ini)
console_mgl=${console_mgl:0:1}
#if [ "$debug" == "1" ]; then
#   echo "console_mgl: $console_mgl"
#fi
source <(grep obsolete_core $ini)
obsolete_core=${obsolete_core:0:1}
#if [ "$debug" == "1" ]; then
#   echo "obsolete_core: $obsolete_core"
#fi
source <(grep remove_other $ini)
remove_other=${remove_other:0:1}
#if [ "$debug" == "1" ]; then
#   echo "remove_other: $remove_other"
#fi
source <(grep console_core $ini)
console_core=${console_core:0:1}
#if [ "$debug" == "1" ]; then
#   echo "console_core: $console_core"
#fi
source <(grep dualsdram $ini)
dualsdram=${dualsdram:0:1}
#if [ "$debug" == "1" ]; then
#   echo "dualsdram: $dualsdram"
#fi
source <(grep main_mister $ini)
main_mister=${main_mister:0:1}
#if [ "$debug" == "1" ]; then
#   echo "main_mister: $main_mister"
#fi
source <(grep additional_res $ini)
additional_res=${additional_res:0:1}
#if [ "$debug" == "1" ]; then
#   echo "additional_res: $additional_res"
#fi

source <(grep psx $ini)
psx=${psx:0:1}
#if [ "$debug" == "1" ]; then
#   echo "psx: $psx"
#fi
source <(grep s32x $ini)
s32x=${s32x:0:1}
#if [ "$debug" == "1" ]; then
#   echo "s32x: $s32x"
#fi
source <(grep saturn $ini)
saturn=${saturn:0:1}
#if [ "$debug" == "1" ]; then
#   echo "saturn: $saturn"
#fi
source <(grep sgb $ini)
sgb=${sgb:0:1}
#if [ "$debug" == "1" ]; then
#   echo "sgb: $sgb"
#fi
source <(grep neogeo $ini)
neogeo=${neogeo:0:1}
#if [ "$debug" == "1" ]; then
#   echo "neogeo: $neogeo"
#fi
source <(grep n64 $ini)
n64=${n64:0:1}
#if [ "$debug" == "1" ]; then
#   echo "n64: $n64"
#fi
source <(grep jaguar $ini)
jaguar=${jaguar:0:1}
#if [ "$debug" == "1" ]; then
#   echo "jaguar: $jaguar"
#fi
source <(grep cdi $ini)
cdi=${cdi:0:1}
#if [ "$debug" == "1" ]; then
#   echo "cdi: $cdi"
#fi
source <(grep pce $ini)
pce=${pce:0:1}
#if [ "$debug" == "1" ]; then
#   echo "pce: $pce"
#fi
source <(grep nes $ini)
nes=${nes:0:1}
#if [ "$debug" == "1" ]; then
#   echo "nes: $nes"
#fi
source <(grep snes $ini)
snes=${snes:0:1}
#if [ "$debug" == "1" ]; then
#   echo "snes: $snes"
#fi
source <(grep folder_name $ini)
#echo "folder_name: $folder_name"
folder_name=${folder_name:0:${#folder_name}}
#if [ -z "$folder_name" ]; then
#  folder_name=$finalfolder
#fi
#if [ "$debug" == "1" ]; then
#   echo "folder_name: $folder_name"
#fi

loadnames

}

function exist {
if [ -f "$ARCADE/$1" ] || [ -d "$ALT/$1" ]; then
   echo "1"
else
   echo "0"
fi
}

function altclean {
sub="$1"
if [ ! -z "$sub" ];
then
   if [ -d "$ALT/$sub/$sub" ]; then
      #echo "AltClean $ALT/$sub/$sub"
      rm -r "$ALT/$sub/$sub"
   fi
fi
}

function remove {

dir="$1"
orientation="$2"
mra="$3"
sub="$4"
renamed="$5"
genre="$6"

if ! [ -z "$sub" ];
then
   rm -r "$ALT/$sub"
fi

}

function add {

dir="$1"
orientation="$2"
mra="$3"
sub="$4"
renamed="$5"
genre="$6"

#echo "manufacturer_subfolder : $manufacturer_subfolder"
#echo "dir: $dir"
#echo "orientation: $orientation"
#echo "mra: $mra"
#echo "sub: $sub"
#echo "renamed: $renamed"


if [ -z "$sub" ];
then
   #echo "add() : empty sub for $mra"
   game=${mra:0:${#mra}-4}
   suf=${mra:${#mra}-3}
   if  [ "$suf" = "mra" ] || [ "$suf" = "mgl" ];
   then
      #default game folder name in _alternatives
      sub="_$game"
   fi
   #echo "add() : sub is $sub"
fi


#if no rename, rename equals original sub name
if ([ -z "$renamed" ]); then 
   renamed=$sub
   #echo "add() : renamed is $renamed"
fi

if [ ! -d "$outdir" ];
then
   #echo "Creating $outdir"
   mkdir "$outdir" 
fi
if [ ! -d "$outdir/$dir" ];then
   if [ ! -z "$dir" ];
   then 
      #echo "Creating $outdir/$dir"
      mkdir "$outdir/$dir"
   fi
fi

if [ -f "$ARCADE/$mra" ];
then
   if [ ! -d "$ALT/$sub" ] 
   then
      #echo "Creating $ALT/$sub"
      mkdir "$ALT/$sub"
   fi
   #echo "Creating $ALT/$sub/$mra"

   if [ "$forcemode" == "force" ] && [  -f "$ALT/$sub/$mra" ]; then
      #echo "removing $ALT/$sub/$mra"
      rm -r "$ALT/$sub/$mra"
   fi
   if [ ! -f "$ALT/$sub/$mra" ];
   then
      ln -s "$ARCADE/$mra" "$ALT/$sub/$mra"
      if [ !  $? -eq 0 ]; then
         echo "ln FAIL"
         echo "ln -s \"$ARCADE/$mra\" \"$ALT/$sub/$mra\""
      fi
   fi
   if [ ! -z "$dir" ];
   then 
      if [ ! -d "$outdir/$dir/$renamed" ];then
         ln -s "$ALT/$sub" "$outdir/$dir/$renamed"
         if [ !  $? -eq 0 ]; then
            echo "ln FAIL"
            echo "ln -s \"$ALT/$sub\" \"$outdir/$dir/$renamed\""
         fi
      fi
   else
      if [ ! -d "$outdir/$renamed" ];then
         ln -s "$ALT/$sub" "$outdir/$renamed"
         if [ !  $? -eq 0 ]; then
            echo "ln FAIL"
            echo "ln -s \"$ALT/$sub\" \"$outdir/$renamed\""
         fi
      fi
   fi
else
  if [ ! -z "$mra" ];
  then
    echo -e "NF $ARCADE/$mra\r - $outdir/$dir" >> /media/fat/Scripts/#insertcoin/out.txt
  fi
fi


if [ "$show_genre" == "1" ]; then

   

   #horizontal
   if [ "$horizontal" == "1" ] && [ "$show_genre" == "1" ] && [ "$orientation" == "H" ]; then
      add_folder "$genre_horizontal"
   fi
   #vertical
   if [ "$vertical" == "1" ] && [ "$show_genre" == "1" ] && [ "$orientation" == "V" ]; then
      add_folder "$genre_vertical"
   fi
   
   if [ "$action" == "1" ] && [ "$show_genre" == "1" ] && [ "$genre" == "ACT" ]; then
      add_folder "$genre_action"
   fi
   if [ "$beat" == "1" ] && [ "$show_genre" == "1" ] && [ "$genre" == "BEA" ]; then
      add_folder "$genre_beat"
   fi
   if [ "$puzzle" == "1" ] && [ "$show_genre" == "1" ] && [ "$genre" == "PUZ" ]; then
      add_folder "$genre_puzzle"
   fi
   if [ "$sport" == "1" ] && [ "$show_genre" == "1" ] && [ "$genre" == "SPO" ]; then
      add_folder "$genre_sport"
   fi
   if [ "$vsf" == "1" ] && [ "$show_genre" == "1" ] && [ "$genre" == "VSF" ]; then
      add_folder "$genre_vsf"
   fi
   if [ "$stg_h" == "1" ] && [ "$show_genre" == "1" ] && [ "$orientation" == "H" ] && [ "$genre" == "STG" ]; then
      add_folder "$genre_stg_h"
   fi
   if [ "$stg_v" == "1" ] && [ "$show_genre" == "1" ] && [ "$orientation" == "V" ] && [ "$genre" == "STG" ]; then
      add_folder "$genre_stg_v"
   fi
   if [ "$rng_h" == "1" ] && [ "$show_genre" == "1" ] && [ "$orientation" == "H" ] && [ "$genre" == "RNG" ]; then
      add_folder "$genre_rng_h"
   fi
   if [ "$rng_v" == "1" ] && [ "$show_genre" == "1" ] && [ "$orientation" == "V" ] && [ "$genre" == "RNG" ]; then
      add_folder "$genre_rng_v"
   fi
fi


if [ ! -z "$sub" ];
then
   altclean "$sub"
fi

}



function add_folder {
folder="$1"

      if [ -f "$names" ]; then
        source <(grep essential $names)
      fi

#ignore essential list
if [ "$dir" != "$essential" ];then

      if [ ! -d "$outdir/$folder" ]; then
         #echo "Creating $outdir/$folder"
         mkdir "$outdir/$folder"
      fi
      if [ ! -z "$dir" ] && [ "$manufacturer_subfolder" == "1" ]; then 
         if [ ! -d "$outdir/$folder/$dir" ]; then
            #echo "Creating $outdir/$folder/$dir"
            mkdir "$outdir/$folder/$dir"
         fi
         if [ ! -d "$outdir/$folder/$dir/$renamed" ]; then
            ln -s "$ALT/$sub" "$outdir/$folder/$dir/$renamed"
            if [ !  $? -eq 0 ]; then
               echo "ln FAIL 1"
               echo "ln -s \"$ALT/$sub\" \"$outdir/$folder/$renamed\""
            fi
         fi
      else
         if [ -d "$ALT/$sub" ]; then
            if [ ! -d "$outdir/$folder/$renamed" ]; then
               ln -s "$ALT/$sub" "$outdir/$folder/$renamed"
               if [ !  $? -eq 0 ]; then
                  echo "ln FAIL 2"
                  echo "ln -s \"$ALT/$sub\" \"$outdir/$folder/$renamed\""
               fi
            fi
         fi
      fi
fi

}


function add_rep {

dir="$1"
orientation="$2"
sub="$3"
renamed="$4"
genre="$6"

#echo "add_rep()"
#echo "dir: $dir"
#echo "orientation: $orientation"
#echo "sub: $sub"
#echo "renamed: $renamed"
#echo "genre: $genre"
if [ -z "$renamed" ]; then
   renamed=$sub
fi
#echo "renamed: $renamed"
#echo "outdir $outdir"
#echo "----------------------------------"
source="$ALT/$sub"
target="$outdir/$dir/$renamed"

if [ ! -d "$outdir/$dir" ];then
   #echo "Creating $outdir/$dir"
   mkdir "$outdir/$dir"
fi

if [ -d "$source" ]; then

   if [ ! -d "$target" ]; then
      #echo "ln -s \"$source\" \"$target\"" >> /media/fat/Scripts/#insertcoin/add_rep.txt
      ln -s "$source" "$target"
      if [ !  $? -eq 0 ]; then
         echo "ln FAIL"
         echo "ln -s \"$source\" \"$target\""
      fi
   fi
fi

if [ "$show_genre" == "1" ]; then

   if [ "$vertical" == "1" ] && [ "$orientation" = "V" ]; then
      add_genre $genre_vertical

   elif [ "$horizontal" == "1" ] && [ "$orientation" = "H" ]; then
      add_genre $genre_horizontal
   fi
   if [ "$action" == "1" ] && [ "$genre" == "ACT" ]; then
      add_genre $genre_action
   elif [ "$beat" == "1" ] && [ "$genre" == "BEA" ]; then
      add_genre $genre_beat
   elif [ "$sport" == "1" ] && [ "$genre" == "SPO" ]; then
      add_genre $genre_sport
   elif [ "$puzzle" == "1" ] && [ "$genre" == "PUZ" ]; then
      add_genre $genre_puzzle
   elif [ "$vsf" == "1" ] && [ "$genre" == "VSF" ]; then
      add_genre $genre_vsf
   elif [ "$stg_h" == "1" ] && [ "$orientation" == "H" ] && [ "$genre" == "STG" ]; then
      add_genre $genre_stg_h
   elif [ "$stg_v" == "1" ] && [ "$orientation" == "V" ] && [ "$genre" == "STG" ]; then
      add_genre $genre_stg_v
   elif [ "$rng_h" == "1" ] && [ "$orientation" == "H" ] && [ "$genre" == "RNG" ]; then
      add_genre $genre_rng_h
   elif [ "$rng_v" == "1" ] && [ "$orientation" == "V" ] && [ "$genre" == "RNG" ]; then
      add_genre $genre_rng_v
   fi
fi

}

function add_genre {

      genre=$1
      #echo "add_genre(): $genre"
      if [ ! -d "$outdir/$genre" ]; then
         mkdir "$outdir/$genre"
      fi 
      if [ ! -z "$dir" ] && [ "$manufacturer_subfolder" == "1" ]; then
         if [ ! -d "$outdir/$genre/$dir" ]; then
            #echo "Creating $outdir/$genre/$dir"
            mkdir "$outdir/$genre/$dir"
         fi
         if [ ! -d "$outdir/$genre/$dir/$renamed" ]; then
            ln -s "$ALT/$sub" "$outdir/$genre/$dir/$renamed"
            if [ !  $? -eq 0 ]; then
               echo "ln FAIL 1"
               echo "ln -s \"$ALT/$sub\" \"$outdir/$genre/$renamed\""
            fi
         fi
      else
         if [ -d "$ALT/$sub" ]; then
            if [ ! -d "$outdir/$genre/$renamed" ]; then
               ln -s "$ALT/$sub" "$outdir/$genre/$renamed"
               if [ !  $? -eq 0 ]; then
                  echo "ln FAIL 2"
                  echo "ln -s \"$ALT/$sub\" \"$outdir/$genre/$renamed\""
               fi
            fi
         fi
      fi
}

function dot {    
    if [ "$TERM" == "xterm" ]; then
       printf "${RED}█" > /dev/tty
    else
       echo -n -e "${RED}█"
    fi

    #echo -n -e "${RED}█" >/dev/tty
}
