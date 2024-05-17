
addon="/media/fat/Scripts/#local/addon"
arcade="/media/fat/_Arcade"

source=$addon/_Arcade/_alternatives
Alt=/media/fat/_Arcade/_alternatives

if [ -d "$addon" ];
then
   echo "installing $addon"
   #ls $addon/_Arcade/*.mra
   #ls $addon/_Arcade/cores/*.rbf
   cp $addon/_Arcade/*.mra $arcade/
   cp $addon/_Arcade/cores/*.rbf $arcade/cores

   for dir in $source/*; do
     d=$(basename -- "$dir")
     #echo "Target $Alt/$d"
     if [ ! -d "$Alt/$d" ] 
     then
        #echo "Creating $Alt/$d"
        mkdir "$Alt/$d"
     fi
     for file in "$dir"/*; do
       f=$(basename -- "$file")
       #echo "$dir/$f"
       src="$source/$d/$f"
       des="$Alt/$d/$f"
       #echo "$src"
       #echo "To $des" 
       cp "$src" "$des"
     done
   done

   if test -f "$addon/neogeo.zip"; then
      cp $addon/neogeo.zip /media/fat/games/mame
   fi
   cp $addon/games/mame/jtbeta.zip /media/fat/games/mame
fi
