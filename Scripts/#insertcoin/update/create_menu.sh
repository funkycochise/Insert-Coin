NC='\033[0m' # No Color
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

subfolder="folders"

launchdir=$1
#echo "launchdir $launchdir"

targetdir=$2
if ([ -z "$2" ]); then 
  targetdir="_Insert_Coin"
fi

COL=$3

newest=$4
horizontal=$5
vertical=$6


out="/media/fat/_Arcade/$targetdir"
echo "Creating $out/"
if [ -d "$out" ]; then
   rm -r "$out" >/dev/null
fi
mkdir -p "$out"

SECONDS=0

if   [ $COL = "1" ]; then 
   echo -e "${RED}"
elif [ $COL = "2" ]; then 
   echo -e "${GREEN}"
elif [ $COL = "3" ]; then 
   echo -e "${ORANGE}"
elif [ $COL = "4" ]; then 
   echo -e "${BLUE}"
elif [ $COL = "5" ]; then 
   echo -e "${PURPLE}"
elif [ $COL = "6" ]; then 
   echo -e "${CYAN}"
elif [ $COL = "7" ]; then 
   echo -e "${LIGHTGRAY}"
elif [ $COL = "8" ]; then 
   echo -e "${DARKGRAY}"
elif [ $COL = "9" ]; then 
   echo -e "${LIGHTRED}"
elif [ $COL = "10" ]; then 
   echo -e "${LIGHTGREEN}"
elif [ $COL = "11" ]; then 
   echo -e "${YELLOW}"
elif [ $COL = "12" ]; then 
   echo -e "${LIGHTBLUE}"
elif [ $COL = "13" ]; then
   echo -e "${LIGHTPURPLE}"
elif [ $COL = "14" ]; then
   echo -e "${LIGHTCYAN}"
elif [ $COL = "15" ]; then
   echo -e "${WHITE}"
fi

sh folders/alpha.sh "$out" $horizontal $vertical
sh folders/atari.sh "$out" $horizontal $vertical
sh folders/bagman.sh "$out" $horizontal $vertical
sh folders/bally-midway.sh "$out" $horizontal $vertical
sh folders/capcom.sh "$out" $horizontal $vertical
sh folders/cave.sh "$out" $horizontal $vertical
sh folders/cps1.sh "$out" $horizontal $vertical
sh folders/cps1.5.sh "$out" $horizontal $vertical
sh folders/cps2.sh "$out" $horizontal $vertical
sh folders/crazykong.sh "$out" $horizontal $vertical
sh folders/deco.sh "$out" $horizontal $vertical
sh folders/galaxian.sh "$out" $horizontal $vertical
sh folders/gottlieb.sh "$out" $horizontal $vertical
sh folders/irem.sh "$out" $horizontal $vertical
sh folders/irem62.sh "$out" $horizontal $vertical
sh folders/irem72.sh "$out" $horizontal $vertical
sh folders/irem92.sh "$out" $horizontal $vertical
sh folders/jaleco.sh "$out" $horizontal $vertical
sh folders/Kiwako.sh "$out" $horizontal $vertical
sh folders/konami.sh "$out" $horizontal $vertical
sh folders/ladybug.sh "$out" $horizontal $vertical
sh folders/mcr1.sh "$out" $horizontal $vertical
sh folders/mcr2.sh "$out" $horizontal $vertical
sh folders/mcr3.sh "$out" $horizontal $vertical
sh folders/namco.sh "$out" $horizontal $vertical
sh folders/neogeo.sh "$out" $horizontal $vertical
sh folders/nichibutsu.sh "$out" $horizontal $vertical
sh folders/nintendo.sh "$out" $horizontal $vertical
sh folders/pacman.sh "$out" $horizontal $vertical
sh folders/rare.sh "$out" $horizontal $vertical
sh folders/raizing.sh "$out" $horizontal $vertical
sh folders/robotron.sh "$out" $horizontal $vertical
sh folders/scramble.sh "$out" $horizontal $vertical
sh folders/sega.sh "$out" $horizontal $vertical
sh folders/segaoutrun.sh "$out" $horizontal $vertical
sh folders/segasys1.sh "$out" $horizontal $vertical
sh folders/segasys2.sh "$out" $horizontal $vertical
sh folders/segasys16.sh "$out" $horizontal $vertical
sh folders/segasyse.sh "$out" $horizontal $vertical
sh folders/si.sh "$out" $horizontal $vertical
sh folders/snk.sh "$out" $horizontal $vertical
sh folders/taito.sh "$out" $horizontal $vertical
sh folders/taitosj.sh "$out" $horizontal $vertical
sh folders/technos.sh "$out" $horizontal $vertical
sh folders/Tehkan-Tecmo.sh "$out" $horizontal $vertical
sh folders/toaplan.sh "$out" $horizontal $vertical
sh folders/universal.sh "$out" $horizontal $vertical
sh folders/upl.sh "$out" $horizontal $vertical
sh folders/williams.sh "$out" $horizontal $vertical
if [ "$newest" == "1" ]; then
  sh folders/newest.sh "$out"
fi
echo -e "${NC}"

