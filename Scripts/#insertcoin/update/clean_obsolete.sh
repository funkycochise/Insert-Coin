#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

loadsetup

echo -e "Cleaning obsolete/unwanted core"
#echo "remove_other : $remove_other"
if [ "$remove_other" == "1" ]; then
  if [ -d "/media/fat/_Other" ] 
  then
    #echo "rm _Other"
    rm -r "/media/fat/_Other"
  fi
fi
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
#Zaxxon
if [ -d "$ALT/_Zaxxon" ] 
then
   rm -r "$ALT/_Zaxxon"
fi
#Future Spy
if [ -d "$ALT/_Future Spy" ] 
then
   rm -r "$ALT/_Future Spy"
fi

#Tetris Clean up
#if [ -d "$ALT/_Tetris" ] 
#then
#  rm -r "$ALT/_Tetris"
#fi
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

cd /media/fat/_Arcade/cores
#find . -maxdepth 1 -type f -name "SEGASYS1_*" ! -name "SEGASYS1_20210901.rbf*" -delete

if [ -f "$CORE/SEGASYS1_20240602.rbf" ] 
then
  if [ -f "$CORE/SEGASYS1_20230315.rbf" ] 
  then
    rm -r "$CORE/SEGASYS1_20230315.rbf"
  fi
  if [ -f "$CORE/SEGASYS1_20230418.rbf" ] 
  then
    rm -r "$CORE/SEGASYS1_20230418.rbf"
  fi
fi
#clean DK previous version if newest exist
if [ -f "$CORE/DonkeyKong_20231228.rbf" ] 
then
  if [ -f "$CORE/DonkeyKong_20230314.rbf" ] 
  then
    rm -r "$CORE/DonkeyKong_20230314.rbf"
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
#_Batrider
if [ -d "$ALT/_Batrider" ]
then
   rm -r "$ALT/_Batrider"
fi
#_Metal Slug 2
if [ -d "$ALT/_Metal Slug 2" ]
then
   rm -r "$ALT/_Metal Slug 2"
fi
#_Varth  Operation Thunderstorm
if [ -d "$ALT/_Varth  Operation Thunderstorm" ]
then
   rm -r "$ALT/_Varth  Operation Thunderstorm"
fi
#_Ring of Destruction Slam Masters II
if [ -d "$ALT/_Ring of Destruction Slam Masters II" ]
then
   rm -r "$ALT/_Ring of Destruction Slam Masters II"
fi
#vimana core
if [ -f "$CORE/vimana_20230606.rbf" ] 
then
  if [ -f "$CORE/vimana_20230526.rbf" ] 
  then
    rm -r "$CORE/vimana_20230526.rbf"
  fi
fi
if [ -f "$CORE/IremM92Turbo_20230521.rbf" ] 
then
    rm -r "$CORE/IremM92Turbo_20230521.rbf"
fi
if [ -f "$CORE/NeoGeo-MVS_20220218.rbf" ] 
then
    rm -r "$CORE/NeoGeo-MVS_20220218.rbf"
fi
#tar Force
find $CORE -maxdepth 1 -type f -name "StarForce_*" ! -name "StarForce_20250803.rbf" -delete

find $CORE -maxdepth 1 -type f -name "NaughtyBoy_*" ! -name "NaughtyBoy_20250424.rbf" -delete

if [ -f "$CORE/mazinger_mister_20250804.rbf" ] 
then
  if [ -f "$CORE/mazinger_mister.rbf" ] 
  then
    rm -r "$CORE/mazinger_mister.rbf"
  fi
fi
if [ -f "$CORE/sailormn_mister_20250805.rbf" ] 
then
  if [ -f "$CORE/sailormn_mister.rbf" ] 
  then
    rm -r "$CORE/sailormn_mister.rbf"
  fi
fi


if [ -f "$CORE/IremM90_20241107.rbf" ] 
then
    find $CORE -maxdepth 1 -type f -name "IremM90_*" ! -name "IremM90_20241107.rbf" -delete
fi

if [ -f "$CORE/hellfire_mister_20251211.rbf" ] && [ -f "$CORE/outzone_mister_20251212.rbf" ] && [ -f "$CORE/truxton_mister_20251211.rbf" ] 
then
   if [ -f "$CORE/zerowing_20240404.rbf" ]
   then 
      rm -r "$CORE/zerowing_20240404.rbf"
   fi
fi


echo -e "${GREEN}${CHECK}${NC} Completed"


