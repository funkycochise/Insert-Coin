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
vert="__Vertical"
horz="__Horizontal"

function setout {
outdir="$1"
}
function sethorizontal {
horizontal="$1"
}
function setvertical {
vertical="$1"
}

function create {
newFolder=$1
#echo "   creating ${newFolder}"
mkdir -p "${newFolder}"
}

function add {

dir="$1"
orientation="$2"
mra="$3"
sub="$4"
renamed="$5"

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
   echo -e "NF $Arcade/$mra\n" >> /media/fat/Scripts/out.txt
fi

if [ "$orientation" = "H" ] && [ "$horizontal" == "1" ]
then
   #echo "H"
   if [ ! -d "$outdir/$horz" ] 
   then
      #echo "Creating $outdir/$horz"
      mkdir "$outdir/$horz"
   fi
   if [ ! -z "$dir" ];
   then 
      if [ ! -d "$outdir/$horz/$dir" ] 
      then
         #echo "Creating $outdir/$horz/$dir"
         mkdir "$outdir/$horz/$dir"
      fi
      if [ ! -d "$outdir/$horz/$dir/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$horz/$dir/$renamed"
      fi
   else
      if [ ! -d "$outdir/$horz/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$horz/$renamed"
      fi
   fi
fi

if [ "$orientation" = "V" ] && [ "$vertical" == "1" ]
then
   #echo "V"
   if [ ! -d "$outdir/$vert" ] 
   then
      #echo "Creating $outdir/$vert"
      mkdir "$outdir/$vert"
   fi
   if [ ! -z "$dir" ];
   then 
      if [ ! -d "$outdir/$vert/$dir" ] 
      then
         #echo "Creating $outdir/$vert/$dir"
         mkdir "$outdir/$vert/$dir"
      fi
      if [ ! -d "$outdir/$vert/$dir/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$vert/$dir/$renamed"
      fi
   else
      if [ ! -d "$outdir/$vert/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$vert/$renamed"
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

#echo "dir: $dir"
#echo "orientation: $orientation"
#echo "mra: $mra"
#echo "sub: $sub"
#echo "renamed: $renamed"
if [ -z "$renamed" ];
then
   renamed=$sub
fi
#echo "renamed: $renamed"

if [ ! -d "$outdir/$dir/$renamed" ] 
then
   ln -s "$Alt/$sub" "$outdir/$dir/$renamed"
fi
if  [ "$orientation" = "H" ];
then
   #echo "H"
   if [ ! -d "$outdir/$horz" ] 
   then
      #echo "Creating $outdir/$horz"
      mkdir "$outdir/$horz"
   fi
   if [ ! -z "$dir" ];
   then 
      if [ ! -d "$outdir/$horz/$dir" ] 
      then
         #echo "Creating $outdir/$horz/$dir"
         mkdir "$outdir/$horz/$dir"
      fi
      if [ ! -d "$outdir/$horz/$dir/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$horz/$dir/$renamed"
      fi
   else
      if [ ! -d "$outdir/$horz/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$horz/$renamed"
      fi
   fi
fi
if  [ "$orientation" = "V" ];
then
   #echo "V"
   if [ ! -d "$outdir/$vert" ] 
   then
      #echo "Creating $outdir/$vert"
      mkdir "$outdir/$vert"
   fi
   if [ ! -z "$dir" ];
   then 
      if [ ! -d "$outdir/$vert/$dir" ] 
      then
         #echo "Creating $outdir/$vert/$dir"
         mkdir "$outdir/$vert/$dir"
      fi
      if [ ! -d "$outdir/$vert/$dir/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$vert/$dir/$renamed"
      fi
   else
      if [ ! -d "$outdir/$vert/$renamed" ] 
      then
         ln -s "$Alt/$sub" "$outdir/$vert/$renamed"
      fi
   fi
fi



#echo "------------------------------------------------"
}


function dot {    
echo -n -e "█"
}