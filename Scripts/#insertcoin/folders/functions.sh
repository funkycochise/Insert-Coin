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

debug="0"

function loadsetup {

source <(grep manufacturer_subfolder $ini)
manufacturer_subfolder=${manufacturer_subfolder:0:1}
if [ "$debug" == "1" ]; then
   echo "manufacturer_subfolder: $manufacturer_subfolder" >> /media/fat/Scripts/#insertcoin/out.txt
fi

source <(grep action $ini)
action=${action:0:1}
if [ "$debug" == "1" ]; then
   echo "action: $action" >> /media/fat/Scripts/#insertcoin/out.txt
fi
source <(grep beat $ini)
beat=${beat:0:1}
if [ "$debug" == "1" ]; then
   echo "beat: $beat" >> /media/fat/Scripts/#insertcoin/out.txt
fi
source <(grep puzzle $ini)
puzzle=${puzzle:0:1}
if [ "$debug" == "1" ]; then
   echo "puzzle: $puzzle" >> /media/fat/Scripts/#insertcoin/out.txt
fi
source <(grep sport $ini)
sport=${sport:0:1}
if [ "$debug" == "1" ]; then
   echo "sport: $sport" >> /media/fat/Scripts/#insertcoin/out.txt
fi
source <(grep vsf $ini)
vsf=${vsf:0:1}
if [ "$debug" == "1" ]; then
   echo "vsf: $vsf" >> /media/fat/Scripts/#insertcoin/out.txt
fi
source <(grep stg_h $ini)
stg_h=${stg_h:0:1}
if [ "$debug" == "1" ]; then
   echo "stg_h: $stg_h" >> /media/fat/Scripts/#insertcoin/out.txt
fi
source <(grep stg_v $ini)
stg_v=${stg_v:0:1}
if [ "$debug" == "1" ]; then
   echo "stg_v: $stg_v" >> /media/fat/Scripts/#insertcoin/out.txt
fi

source <(grep horizontal $ini)
horizontal=${horizontal:0:1}
#echo "horizontal: $horizontal"
source <(grep vertical $ini)
vertical=${vertical:0:1}
if [ "$debug" == "1" ]; then
 echo "vertical: $vertical" >> /media/fat/Scripts/#insertcoin/out.txt
fi
source <(grep newest $ini)
newest=${newest:0:1}
if [ "$debug" == "1" ]; then
   echo "newest: $newest" >> /media/fat/Scripts/#insertcoin/out.txt
fi

}

function exist {
mra=$1
if [ -f "$Arcade/$mra" ];
then
   echo "1"
else
   echo "0"
fi
}

function altclean {
sub="$1"
if [ ! -z "$sub" ];
then
   if [ -d "$Alt/$sub/$sub" ]; then
      #echo "AltClean $Alt/$sub/$sub"
      rm -r "$Alt/$sub/$sub"
   fi
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
    echo -e "NF $Arcade/$mra\r" >> /media/fat/Scripts/#insertcoin/out.txt
  fi
fi
#horizontal
if [ "$horizontal" == "1" ] && [ "$orientation" == "H" ]; then
   add_folder "$horz"
fi
#vertical
if [ "$vertical" == "1" ] && [ "$orientation" == "V" ]; then
   add_folder "$vert"
fi
if [ "$action" == "1" ] && [ "$genre" == "ACT" ]; then
   add_folder "$genre_act"
fi
if [ "$beat" == "1" ] && [ "$genre" == "BEA" ]; then
   add_folder "$genre_bea"
fi
if [ "$puzzle" == "1" ] && [ "$genre" == "PUZ" ]; then
   add_folder "$genre_puz"
fi
if [ "$sport" == "1" ] && [ "$genre" == "SPO" ]; then
   add_folder "$genre_spo"
fi
if [ "$vsf" == "1" ] && [ "$genre" == "VSF" ]; then
      add_folder "$genre_vsf"
fi
if [ "$stg_h" == "1" ] && [ "$orientation" == "H" ] && [ "$genre" == "STG" ]; then
      add_folder "$genre_stg_h"
fi
if [ "$stg_v" == "1" ] && [ "$orientation" == "V" ] && [ "$genre" == "STG" ]; then
      add_folder "$genre_stg_v"
fi

if [ ! -z "$sub" ];
then
   altclean "$sub"
fi


#echo "------------------------------------------------"
}

function add_folder {
folder="$1"

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
            ln -s "$Alt/$sub" "$outdir/$folder/$dir/$renamed"
         fi
      else
         if [ ! -d "$outdir/$folder/$renamed" ]; then
            ln -s "$Alt/$sub" "$outdir/$folder/$renamed"
         fi
      fi

}

function rep {

#echo "rep()"

dir="$1"
orientation="$2"
mra="$3"
sub="$4"
renamed="$5"
genre="$6"

#echo "outdir: $outdir"
#echo "dir: $dir"
#echo "orientation: $orientation"
#echo "mra: $mra"
#echo "sub: $sub"
#echo "renamed: $renamed"
#echo "genre $genre"
if [ -z "$renamed" ]; then
   renamed=$sub
fi
#echo "renamed: $renamed"

if [ ! -z "$dir" ] && [ ! -d "$outdir/$dir" ]; then
   #echo "Creating $outdir/$dir"
   mkdir "$outdir/$dir"
fi
if [ ! -z "$dir" ] && [ "$manufacturer_subfolder" == "1" ]; then 
   if [ ! -d "$outdir/$dir/$renamed" ]; then
      #echo "creating $outdir/$dir/$renamed"
      ln -s "$Alt/$mra" "$outdir/$dir/$renamed"
   fi
else
   #echo "rep() else"
   #echo "outdir: $outdir"
   #echo "dir: $dir"
   #echo "orientation: $orientation"
   #echo "mra: $mra"
   #echo "sub: $sub"
   #echo "renamed: $renamed"
   #echo "genre $genre"

   if [ ! -d "rep() : $outdir/$dir/$renamed" ]; then
      #echo "$outdir/$dir/$renamed"
      ln -s "$Alt/$mra" "$outdir/$dir/$renamed"
   fi
fi

if [ "$vertical" == "1" ] && [ "$orientation" = "V" ]; then
   rep_folder "$vert"
elif [ "$horizontal" == "1" ] && [ "$orientation" = "H" ]; then
   rep_folder "$horz"
fi
if [ "$action" == "1" ] && [ "$genre" == "ACT" ]; then
   rep_folder "$genre_act"
fi
if [ "$beat" == "1" ] && [ "$genre" == "BEA" ]; then
   rep_folder "$genre_bea"
fi
if [ "$puzzle" == "1" ] && [ "$genre" == "PUZ" ]; then
   rep_folder "$genre_puz"
fi
if [ "$sport" == "1" ] && [ "$genre" == "SPO" ]; then
   rep_folder "$genre_spo"
fi
if [ "$vsf" == "1" ] && [ "$genre" == "VSF" ]; then
   rep_folder "$genre_vsf"
fi
if [ "$stg_h" == "1" ] && [ "$orientation" == "H" ] && [ "$genre" == "STG" ]; then
   rep_folder "$genre_stg_h"
fi
if [ "$stg_v" == "1" ] && [ "$orientation" == "V" ] && [ "$genre" == "STG" ]; then
   rep_folder "$genre_stg_v"
fi

if [ ! -z "$sub" ];
then
   altclean "$sub"
fi

#echo "------------------------------------------------"
}

function rep_folder {
   folder="$1"
   #echo "dir: $dir"
   #echo "orientation: $orientation"
   #echo "mra: $mra"
   #echo "sub: $sub"
   #echo "renamed: $renamed"
   #echo "genre $genre"
   #echo "V : $outdir/$folder/$dir/$renamed"
   if [ ! -z "$dir" ] && [ "$manufacturer_subfolder" == "1" ]; then 
      if [ ! -d "$outdir/$folder/$dir" ]; then
         #echo "Creating $outdir/$folder/$dir"
         mkdir "$outdir/$folder/$dir"
      fi 
      if [ ! -d "$outdir/$folder/$dir/$renamed" ]; then
         #echo "$outdir/$folder/$dir/$renamed"
         ln -s "$Alt/$mra" "$outdir/$folder/$dir/$renamed"
      fi
   else
      if [ ! -d "$outdir/$folder" ]; then
         #echo "Creating $outdir/$folder"
         mkdir "$outdir/$folder"
      fi 
      if [ ! -d "$outdir/$folder/$mra" ]; then
         #echo "$outdir/$folder/$mra"
         ln -s "$Alt/$mra" "$outdir/$folder/$mra"
      fi
   fi

}

function dot {    
echo -n -e "${RED}█"
}
