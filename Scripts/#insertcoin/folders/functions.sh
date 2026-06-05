
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

if [ ! -d "$targetfolder" ];
then
   #echo "Creating $targetfolder"
   mkdir "$targetfolder" 
fi
if [ ! -d "$targetfolder/$dir" ];then
   if [ ! -z "$dir" ];
   then 
      #echo "Creating $targetfolder/$dir"
      mkdir "$targetfolder/$dir"
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
      if [ ! -d "$targetfolder/$dir/$renamed" ];then
         ln -s "$ALT/$sub" "$targetfolder/$dir/$renamed"
         if [ !  $? -eq 0 ]; then
            echo "ln FAIL"
            echo "ln -s \"$ALT/$sub\" \"$targetfolder/$dir/$renamed\""
         fi
      fi
   else
      if [ ! -d "$targetfolder/$renamed" ];then
         ln -s "$ALT/$sub" "$targetfolder/$renamed"
         if [ !  $? -eq 0 ]; then
            echo "ln FAIL"
            echo "ln -s \"$ALT/$sub\" \"$targetfolder/$renamed\""
         fi
      fi
   fi
else
  if [ ! -z "$mra" ];
  then
    echo -e "NF $ARCADE/$mra\r - $targetfolder/$dir" >> /media/fat/Scripts/#insertcoin/out.txt
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

      if [ ! -d "$targetfolder/$folder" ]; then
         #echo "Creating $targetfolder/$folder"
         mkdir "$targetfolder/$folder"
      fi
      if [ ! -z "$dir" ] && [ "$manufacturer_subfolder" == "1" ]; then 
         if [ ! -d "$targetfolder/$folder/$dir" ]; then
            #echo "Creating $targetfolder/$folder/$dir"
            mkdir "$targetfolder/$folder/$dir"
         fi
         if [ ! -d "$targetfolder/$folder/$dir/$renamed" ]; then
            ln -s "$ALT/$sub" "$targetfolder/$folder/$dir/$renamed"
            if [ !  $? -eq 0 ]; then
               echo "ln FAIL 1"
               echo "ln -s \"$ALT/$sub\" \"$targetfolder/$folder/$renamed\""
            fi
         fi
      else
         if [ -d "$ALT/$sub" ]; then
            if [ ! -d "$targetfolder/$folder/$renamed" ]; then
               ln -s "$ALT/$sub" "$targetfolder/$folder/$renamed"
               if [ !  $? -eq 0 ]; then
                  echo "ln FAIL 2"
                  echo "ln -s \"$ALT/$sub\" \"$targetfolder/$folder/$renamed\""
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
#echo "targetfolder $targetfolder"
#echo "----------------------------------"
source="$ALT/$sub"
target="$targetfolder/$dir/$renamed"

if [ ! -d "$targetfolder/$dir" ];then
   #echo "Creating $targetfolder/$dir"
   mkdir "$targetfolder/$dir"
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
      if [ ! -d "$targetfolder/$genre" ]; then
         mkdir "$targetfolder/$genre"
      fi 
      if [ ! -z "$dir" ] && [ "$manufacturer_subfolder" == "1" ]; then
         if [ ! -d "$targetfolder/$genre/$dir" ]; then
            #echo "Creating $targetfolder/$genre/$dir"
            mkdir "$targetfolder/$genre/$dir"
         fi
         if [ ! -d "$targetfolder/$genre/$dir/$renamed" ]; then
            ln -s "$ALT/$sub" "$targetfolder/$genre/$dir/$renamed"
            if [ !  $? -eq 0 ]; then
               echo "ln FAIL 1"
               echo "ln -s \"$ALT/$sub\" \"$targetfolder/$genre/$renamed\""
            fi
         fi
      else
         if [ -d "$ALT/$sub" ]; then
            if [ ! -d "$targetfolder/$genre/$renamed" ]; then
               ln -s "$ALT/$sub" "$targetfolder/$genre/$renamed"
               if [ !  $? -eq 0 ]; then
                  echo "ln FAIL 2"
                  echo "ln -s \"$ALT/$sub\" \"$targetfolder/$genre/$renamed\""
               fi
            fi
         fi
      fi
}

function dot {    
    echo -n -e "${RED}█"
}
