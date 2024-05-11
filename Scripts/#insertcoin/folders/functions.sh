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

Arcade=/media/fat/_Arcade
Alt=/media/fat/_Arcade/_alternatives

genre_act="__Action"
genre_bea="__Beat'em up"
genre_spo="__Sport"
genre_puz="__Puzzle"
genre_vsf="__Vs Fighting"
genre_stg_h="__STG_H"
genre_stg_v="__STG_V"
vert="__Vertical"
horz="__Horizontal"

#get setup settings
ini=/media/fat/Scripts/#insertcoin/setup.ini


function loadsetup {
source <(grep action $ini)
action=${action:0:1}
#echo "action: $action"
source <(grep beat $ini)
beat=${beat:0:1}
#echo "beat: $beat"
source <(grep puzzle $ini)
puzzle=${puzzle:0:1}
#echo "puzzle: $puzzle"
source <(grep sport $ini)
sport=${sport:0:1}
#echo "sport: $sport"
source <(grep vsf $ini)
vsf=${vsf:0:1}
#echo "vsf: $vsf"
source <(grep stg_h $ini)
stg_h=${stg_h:0:1}
#echo "stg_h: $stg_h"
source <(grep stg_v $ini)
stg_v=${stg_v:0:1}
#echo "stg_v: $stg_v"

source <(grep horizontal $ini)
horizontal=${horizontal:0:1}
#echo "horizontal: $horizontal"
source <(grep vertical $ini)
vertical=${vertical:0:1}
#echo "vertical: $vertical"
source <(grep newest $ini)
newest=${newest:0:1}
#echo "newest: $newest"
#echo "--------------------"

}

function add {

dir="$1"
orientation="$2"
mra="$3"
sub="$4"
renamed="$5"
genre="$6"

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
   if  [ "$suf" = "mra" ];
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
if [ ! -d "$outdir/$dir" ];
then
   if [ ! -z "$dir" ];
   then 
      #echo "Creating $outdir/$dir"
      mkdir "$outdir/$dir"
   fi
fi

if [ -f "$Arcade/$mra" ];
then
   if [ ! -d "$Alt/$sub" ] 
   then
      #echo "Creating $Alt/$sub"
      mkdir "$Alt/$sub"
   fi
   #echo "Creating $Alt/$sub/$mra"
   if [ ! -f "$Alt/$sub/$mra" ];
   then
      ln -s "$Arcade/$mra" "$Alt/$sub/$mra"
   fi
   if [ ! -z "$dir" ];
   then 
      if [ ! -d "$outdir/$dir/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$dir/$renamed"
      fi
   else
      if [ ! -d "$outdir/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$renamed"
      fi
   fi
else
  if [ ! -z "$mra" ];
  then
    echo -e "NF $Arcade/$mra\r" >> /media/fat/Scripts/out.txt
  fi
fi

if [ "$horizontal" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      #echo "H"
      if [ ! -d "$outdir/$horz" ]; then
         #echo "Creating $outdir/$horz"
         mkdir "$outdir/$horz"
      fi
      if [ ! -z "$dir" ]; then 
         if [ ! -d "$outdir/$horz/$dir" ]; then
            #echo "Creating $outdir/$horz/$dir"
            mkdir "$outdir/$horz/$dir"
         fi
         if [ ! -d "$outdir/$horz/$dir/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$horz/$dir/$renamed"
         fi
      else
         if [ ! -d "$outdir/$horz/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$horz/$renamed"
         fi
      fi
   fi
fi

if [ "$horizontal" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ ! -d "$outdir/$horz" ]; then
         #echo "Creating $outdir/$horz"
         mkdir "$outdir/$horz"
      fi
      if [ ! -d "$outdir/$horz/$renamed" ]; then
         ln -s "$Alt/$sub" "$outdir/$horz/$renamed"
      fi
   fi
fi
if [ "$vertical" == "1" ]; then
   if [ "$orientation" = "V" ]; then
      if [ ! -d "$outdir/$vert" ]; then
         #echo "Creating $outdir/$vert"
         mkdir "$outdir/$vert"
      fi
      if [ ! -d "$outdir/$vert/$renamed" ]; then
         ln -s "$Alt/$sub" "$outdir/$vert/$renamed"
      fi
   fi
fi

#genre section
if [ "$action" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "ACT" ]; then
         if [ ! -d "$outdir/$genre_act" ]; then
            #echo "Creating $outdir/$genre_act"
            mkdir "$outdir/$genre_act"
         fi
         if [ ! -d "$outdir/$genre_act/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_act/$renamed"
         fi
      fi
   fi
fi
if [ "$beat" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "BEA" ]; then
         if [ ! -d "$outdir/$genre_bea" ]; then
            #echo "Creating $outdir/$genre_bea"
            mkdir "$outdir/$genre_bea"
         fi
         if [ ! -d "$outdir/$genre_bea/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_bea/$renamed"
         fi
      fi
   fi
fi
if [ "$puzzle" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "PUZ" ]; then
         if [ ! -d "$outdir/$genre_puz" ]; then
            #echo "Creating $outdir/$genre_puz"
            mkdir "$outdir/$genre_puz"
         fi
         if [ ! -d "$outdir/$genre_puz/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_puz/$renamed"
         fi
      fi
   fi
fi
if [ "$sport" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "SPO" ]; then
         if [ ! -d "$outdir/$genre_spo" ]; then
            #echo "Creating $outdir/$genre_spo"
            mkdir "$outdir/$genre_spo"
         fi
         if [ ! -d "$outdir/$genre_spo/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_spo/$renamed"
         fi
      fi
   fi
fi
if [ "$vsf" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "VSF" ]; then
         if [ ! -d "$outdir/$genre_vsf" ]; then
            #echo "Creating $outdir/$genre_vsf"
            mkdir "$outdir/$genre_vsf"
         fi
         if [ ! -d "$outdir/$genre_vsf/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_vsf/$renamed"
         fi
      fi
   fi
fi
#if [ "$genre" == "STG" ]; then
   #echo "genre: $genre"
   #echo  stgh: $stg_h stgv: $stg_v
   #echo "game: $renamed"
#fi
if [ "$stg_h" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "STG" ]; then
         if [ ! -d "$outdir/$genre_stg_h" ]; then
            #echo "Creating $outdir/$genre_stg_h"
            mkdir "$outdir/$genre_stg_h"
         fi
         if [ ! -d "$outdir/$genre_stg_h/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_stg_h/$renamed"
         fi
      fi
   fi
fi
if [ "$stg_v" == "1" ]; then
   if [ "$orientation" = "V" ]; then
      if [ "$genre" == "STG" ]; then
         if [ ! -d "$outdir/$genre_stg_v" ]; then
            #echo "Creating $outdir/$genre_stg_v"
            mkdir "$outdir/$genre_stg_v"
         fi
         if [ ! -d "$outdir/$genre_stg_v/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_stg_v/$renamed"
         fi
      fi
   fi
fi

#echo "------------------------------------------------"
}

function dir {

#echo "dir()"

dir="$1"
orientation="$2"
mra="$3"
sub="$4"
renamed="$5"
genre="$6"

#echo "dir: $dir"
#echo "orientation: $orientation"
#echo "mra: $mra"
#echo "sub: $sub"
#echo "renamed: $renamed"
#echo "genre $genre"
if [ -z "$renamed" ];
then
   renamed=$sub
fi
#echo "renamed: $renamed"

if [ ! -d "$outdir/$dir/$renamed" ] 
then
   ln -s "$Alt/$sub" "$outdir/$dir/$renamed"
fi

if [ "$horizontal" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      #echo "H"
      if [ ! -d "$outdir/$horz" ]; then
         #echo "Creating $outdir/$horz"
         mkdir "$outdir/$horz"
      fi
      if [ ! -z "$dir" ]; then 
         if [ ! -d "$outdir/$horz/$dir" ]; then
            #echo "Creating $outdir/$horz/$dir"
            mkdir "$outdir/$horz/$dir"
         fi
         if [ ! -d "$outdir/$horz/$dir/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$horz/$dir/$renamed"
         fi
      else
         if [ ! -d "$outdir/$horz/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$horz/$renamed"
         fi
      fi
   fi
fi
if [ "$vertical" == "1" ]; then
   if [ "$orientation" = "V" ]; then
      #echo "V"
      if [ ! -d "$outdir/$vert" ]; then
         #echo "Creating $outdir/$vert"
         mkdir "$outdir/$vert"
      fi
      if [ ! -z "$dir" ]; then 
         if [ ! -d "$outdir/$vert/$dir" ]; then
            #echo "Creating $outdir/$vert/$dir"
            mkdir "$outdir/$vert/$dir"
         fi
         if [ ! -d "$outdir/$vert/$dir/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$vert/$dir/$renamed"
         fi
      else
         if [ ! -d "$outdir/$vert/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$vert/$renamed"
         fi
      fi
   fi
fi

#genre section
if [ "$action" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "ACT" ]; then
         if [ ! -d "$outdir/$genre_act" ]; then
            #echo "Creating $outdir/$genre_act"
            mkdir "$outdir/$genre_act"
         fi
         if [ ! -d "$outdir/$genre_act/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_act/$renamed"
         fi
      fi
   fi
fi
if [ "$beat" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "BEA" ]; then
         if [ ! -d "$outdir/$genre_bea" ]; then
            #echo "Creating $outdir/$genre_bea"
            mkdir "$outdir/$genre_bea"
         fi
         if [ ! -d "$outdir/$genre_bea/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_bea/$renamed"
         fi
      fi
   fi
fi
if [ "$puzzle" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "PUZ" ]; then
         if [ ! -d "$outdir/$genre_puz" ]; then
            #echo "Creating $outdir/$genre_puz"
            mkdir "$outdir/$genre_puz"
         fi
         if [ ! -d "$outdir/$genre_puz/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_puz/$renamed"
         fi
      fi
   fi
fi
if [ "$sport" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "SPO" ]; then
         #echo "SPO $outdir/$genre_spo/$renamed"
         if [ ! -d "$outdir/$genre_spo" ]; then
            #echo "Creating $outdir/$genre_spo"
            mkdir "$outdir/$genre_spo"
         fi
         if [ ! -d "$outdir/$genre_spo/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_spo/$renamed"
         fi
      fi
   fi
fi
if [ "$vsf" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "VSF" ]; then
         #echo "SPO $outdir/$genre_vsf/$renamed"
         if [ ! -d "$outdir/$genre_vsf" ]; then
            #echo "Creating $outdir/$genre_vsf"
            mkdir "$outdir/$genre_vsf"
         fi
         if [ ! -d "$outdir/$genre_vsf/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_vsf/$renamed"
         fi
      fi
   fi
fi
if [ "$stg_horizontal" == "1" ]; then
   if [ "$orientation" = "H" ]; then
      if [ "$genre" == "STG" ]; then
         if [ ! -d "$outdir/$genre_stg_h" ]; then
            #echo "Creating $outdir/$genre_stg_h"
            mkdir "$outdir/$genre_stg_h"
         fi
         if [ ! -d "$outdir/$genre_stg_h/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_stg_h/$renamed"
         fi
      fi
   fi
fi
if [ "$stg_vertical" == "1" ]; then
   if [ "$orientation" = "V" ]; then
      if [ "$genre" == "STG" ]; then
         #echo "STG"
         if [ ! -d "$outdir/$genre_stg_v" ]; then
            #echo "Creating $outdir/$genre_stg_v"
            mkdir "$outdir/$genre_stg_v"
         fi
         if [ ! -d "$outdir/$genre_stg_v/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$genre_stg_v/$renamed"
         fi
      fi
   fi
fi


#echo "------------------------------------------------"
}

function dot {    
echo -n -e "${RED}█"
}
