#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

loadsetup

cd /media/fat
MF=MiSTer


if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "Installing custom Main"

if [ -f "/media/fat/Mister_" ]; then
   rm /media/fat/Mister_
fi
#echo "Renaming current main mister."
cp /media/fat/Mister /media/fat/Mister_
rm /media/fat/Mister

#echo "Downloading latest main mister."
curl https://raw.githubusercontent.com/funkycochise/Main_MiSTer/master/releases/$MF /media/fat -O -k -s
if test -f "/media/fat/Mister"; then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo -e "${GREEN}${CHECK}${NC} Completed"
   rm /media/fat/Mister_
else
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo -e "Something went wrong while trying to download main Mister."
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo -e "Previous Main Mister is restored."
   cp /media/fat/Mister_ /media/fat/Mister
   rm /media/fat/Mister_
fi

echo ""

