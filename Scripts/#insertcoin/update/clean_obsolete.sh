#!/bin/bash

launchdir=$1
#special_echo "launchdir $launchdir"

ALT=/media/fat/_Arcade/_alternatives
CORE=/media/fat/_Arcade/Cores
CONSOLE=/media/fat/_Console

echo "Cleaning obsolete core"

#remove previous G&W core
if [ -f "$CONSOLE/GnW_20220606.rbf" ] 
then
  rm -r "$CONSOLE/GnW_20220606.rbf"
fi
##dup SNES, remove oldest one
if [ -f "$CONSOLE/SNES_20230502.rbf" ] 
then
  if [ -f "$CONSOLE/SNES_20230223.rbf" ] 
  then
    rm -r "$CONSOLE/SNES_20230223.rbf"
  fi
fi

#Tetris Clean up
if [ -d "$ALT/_Tetris" ] 
then
  rm -r "$ALT/_Tetris"
fi
#Alex Kidd clean up
if [ -d "$ALT/_Alex Kidd" ] 
then
  rm -r "$ALT/_Alex Kidd"
fi
#Kick n Run initial version
if [ -d "$ALT/_kicknrun" ] 
then
  rm -r "$ALT/_kicknrun"
fi
# move Boulderdash japan version
if [ -d "$ALT/_Boulder Dash/Boulder Dash Part 2" ] 
then
  mv "$ALT/_Boulder Dash/Boulder Dash Part 2/Boulder Dash - Boulder Dash Part 2 (Japan).mra" "$ALT/_Boulder Dash"
  rm -r "$ALT/_Boulder Dash/Boulder Dash Part 2"
fi
#clean sega system 1 previous version
if [ -f "$CORE/SEGASYS1_20230418.rbf" ] 
then
  if [ -f "$CORE/SEGASYS1_20230315.rbf" ] 
  then
    rm -r "$CORE/SEGASYS1_20230315.rbf"
  fi
fi
#clean Arkanoid alternative folder
if [ -f "$ALT/_Arkanoid/Arkanoid - Revenge of DOH (Japan bootleg).mra" ]
then
  rm -r "$ALT/_Arkanoid/Arkanoid - Revenge of DOH (Japan bootleg).mra"
fi
if [ -f "$ALT/_Arkanoid/Arkanoid - Revenge of DOH (Japan).mra" ] 
then
   rm -r "$ALT/_Arkanoid/Arkanoid - Revenge of DOH (Japan).mra"
fi
if [ -f "$ALT/_Arkanoid/Arkanoid - Revenge of DOH (US).mra" ] 
then
   rm -r "$ALT/_Arkanoid/Arkanoid - Revenge of DOH (US).mra"
fi
#clean double dragon obsolete mra
if [ -d "$ALT/_Double Dragon" ] 
then
  if [ -f "$ALT/_Double Dragon/Double Dragon.mra" ] 
  then
    rm -r "$ALT/_Double Dragon/Double Dragon.mra"
  fi
fi
#clean double dragon II obsolete folder
if [ -d "$ALT/_Double Dragon II - The Revenge" ] 
then
   rm -r "$ALT/_Double Dragon II - The Revenge"
fi
#clean previous M.I.A folder
if [ -d "$ALT/_M.I.A" ]
then
   rm -r "$ALT/_M.I.A"
fi
echo "Completed."
echo ""
