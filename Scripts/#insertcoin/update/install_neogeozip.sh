
addon="/media/fat/Scripts/#pedro/addon"
arcade="/media/fat/_Arcade"

if [ -d "$addon" ];
then
   echo "installing $addon"
   #ls $addon/_Arcade/*.mra
   #ls $addon/_Arcade/cores/*.rbf
   cp $addon/_Arcade/*.mra $arcade/
   cp $addon/_Arcade/cores/*.rbf $arcade/cores
   if test -f "$addon/neogeo.zip"; then
      cp $addon/neogeo.zip /media/fat/games/mame
   fi
   cp $addon/games/mame/jtbeta.zip /media/fat/games/mame
fi
