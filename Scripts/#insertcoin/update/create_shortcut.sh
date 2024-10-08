#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

loadsetup

finalfolder="_Insert Coin"
folder="/media/fat/$finalfolder"
if [ -d "$folder" ] 
then
  #echo "Removing $folder"
  rm -r "$folder"
fi 

if [ "$root_symlink" == "1" ]; then
   folder="/media/fat/_Arcade/$finalfolder"
   if [ -d "$folder" ] 
   then
      echo "Creating shortcut /media/fat/$finalfolder"
      ln -s "$folder" "/media/fat/$finalfolder"
      if [ "$TERM" == "linux" ]; then
         #GUI
         echo -n -e "   "
      fi
      echo -e "${GREEN}${CHECK}${NC} Completed"
   fi
fi
