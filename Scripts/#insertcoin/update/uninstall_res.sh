#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

icmainres=https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/
res="/media/fat/Scripts/#insertcoin/res"
mra=$res/_Arcade
cores=$res/_Arcade/cores
altdir=$res/_Arcade/_alternatives

function getres {

if [ -d "/media/fat/Scripts/#insertcoin/res" ] 
then
   rm -r /media/fat/Scripts/#insertcoin/res
fi
if [ -f "/media/fat/Scripts/temp/res.zip" ] 
then
   rm -r /media/fat/Scripts/temp/res.zip
fi
      
curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/res.zip -O -k -s --output /media/fat/Scripts/temp/res.zip >/dev/null
unzip -qq /media/fat/Scripts/temp/res.zip -d /media/fat/Scripts/#insertcoin/res 

}

function uninstallres {

if [ -d "$res" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo "Uinstalling $res/"

   echo "mra"
   for file in $mra/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         if [ -f "$ARCADE/$f" ];
         then
            echo "$ARCADE/$f"
            rm -r "$ARCADE/$f"
         fi
      fi
   done

   echo "cores"
   for file in $cores/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         if [ -f "$CORE/$f" ];
         then
            echo "$CORE/$f"

            rm -r "$CORE/$f"
         fi
      fi
   done

   echo "alternatives"
   for file in $altdir/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         if [ -d "$ALT/$dir" ];
         then
            echo "removing in $ALT/$dir"
            rm -r "$ALT/$dir"
         fi
      fi
   done

   #for dir in $altdir/*; do
   #  d=$(basename -- "$dir")
   #  #echo "Target $ALT/$d"
   #  if [ ! -d "$ALT/$d" ] 
   #  then
   #     #echo "Creating $ALT/$d"
   #     mkdir "$ALT/$d"
   #  fi
   #  for file in "$dir"/*; do
   #    f=$(basename -- "$file")
   #    #echo "$dir/$f"
   #    src="$altdir/$d/$f"
   #    des="$ALT/$d/$f"
   #    #echo "$src"
   #    #echo "To $des" 
   #    cp "$src" "$des"
   #  done
   #done

echo "Completed."

fi

}

getres
uninstallres