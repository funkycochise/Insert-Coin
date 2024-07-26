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

function installres {
echo "Installing Insert-coin resources."
if [ -d "$res" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo "Installing $res/"
   #ls $res/_Arcade/*.mra
   #ls $res/_Arcade/cores/*.rbf
   #cp $res/_Arcade/*.mra $ARCADE/
   #cp $res/_Arcade/cores/*.rbf $ARCADE/cores

   #echo "mra"
   for file in $mra/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         #echo "$ARCADE/$f"

         cp "$file" "$ARCADE/$f"
      fi
   done

   #echo "cores"
   for file in $cores/*; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         #echo "$CORE/$f"
         cp "$file" "$CORE/$f"
      fi
   done

   #echo "alternatives"
   for file in $altdir/*; do
      #echo "$file"
      dir=$(basename -- "$file")
      if [ -d "$file" ];
      then
         if [ ! -d "$ALT/$dir" ];
         then
            mkdir "$ALT/$dir"
         fi
         #echo "copying in $ALT/$dir"

         for file in "$altdir/$dir"/*; do
            f=$(basename -- "$file")
            #echo "$ALT/$dir/$f"
            cp "$altdir/$dir/$f" "$ALT/$dir/$f"
         done
      fi
   done

   #removing res dir
   rm -r "$res"
fi
echo "Completed."
}

getres
installres