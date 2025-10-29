#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

loadsetup

CONSOLE=/media/fat/_Console

function CleanSNES {

  #get last revision
  for f in $(ls $CONSOLE/SNES*.rbf)
  do
    target=${f:20:${#f}}
    #echo "source: $f"
    #echo "target: $target"

  done
  #remove all previous version
  find $CONSOLE -maxdepth 1 -type f -name "SNES*" ! -name "$target" -delete
}

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "Cleaning console mgl"

#gameboy color ? remove
if [ -f "/media/fat/_Console/GameboyColor.mgl" ] 
then
   rm -r "/media/fat/_Console/GameboyColor.mgl"
fi
#wonderswan color mgl ? remove
if [ -f "/media/fat/_Console/WonderSwan Color.mgl" ] 
then
   rm -r "/media/fat/_Console/WonderSwan Color.mgl"
fi
#obsolete G&W
if [ -f "/media/fat/_Console/GnW_20220606.rbf" ] 
then
   rm -r "/media/fat/_Console/GnW_20220606.rbf"
fi
if [ -f "/media/fat/_Console/NeoGeo_20250206.rbf" ];then
   if [ -f "/media/fat/_Console/NeoGeo_20250105.rbf" ];then  
      rm -r "/media/fat/_Console/NeoGeo_20250105.rbf"
   fi
fi

#keep only latest SNES console core
#disabled for instance
#CleanSNES

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${GREEN}${CHECK}${NC} Completed"
