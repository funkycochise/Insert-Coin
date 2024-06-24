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

echo "Cleaning console mgl"

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

#keep only latest SNES console core
CleanSNES

echo -e "\\r${GREEN}${CHECK}${NC} Completed"
