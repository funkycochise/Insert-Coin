#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/setup.sh

#BLUE='\033[0;34m'
#NC='\033[0m'
#CHECK="•"

SD=/media/fat
des_games=$SD/games
temp=$SD/Scripts/temp
ia="https://archive.org/download/insert_coin_mame"

mkdir -p "$temp"

# dl <dossier> <fichier> : download <fichier> into /media/fat/games/<dossier>/
function dl {
   local dir="$1" file="$2"
   local dest="$des_games/$dir/$file"
   local tmp="$temp/${dir}_${file}"

   if [ -f "$dest" ]; then
      return
   fi

   echo -n "downloading $dir/$file"
   wget -q -c -O "$tmp" "$ia/$dir/$file"
   if [ -s "$tmp" ]; then
      mkdir -p "$des_games/$dir"
      mv "$tmp" "$dest"
      echo -e "\r${BLUE}${CHECK}${NC} $dir/$file                    "
   else
      rm -f "$tmp"
      echo -e ": Error when downloading $dir/$file                  "
   fi
}

echo "Updating games folder $des_games (kinst, kinst2, polystar)"

dl "polystar" "polystar_full.bin"
dl "polystar" "polystar_full.cue"

dl "kinst" "kinst.img"

dl "kinst2" "kinst2.img"

echo -e "${GREEN}${CHECK}${NC} Completed"
