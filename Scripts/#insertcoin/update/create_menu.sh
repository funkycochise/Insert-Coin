#!/bin/bash

source ./folders/functions.sh

launchdir=$1
#echo "launchdir: $launchdir"
targetdir=$2
if ([ -z "$2" ]); then 
  targetdir="_Insert_Coin"
fi
#echo "targetdir: $targetdir"
COL=$3

out="/media/fat/_Arcade/$targetdir"

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo "Creating $out/"
if [ -d "$out" ]; then
   rm -r "$out" >/dev/null
fi
mkdir -p "$out"
echo ""

loadsetup

SECONDS=0

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi

./folders/alpha.sh "$out"
./folders/atari.sh "$out"
./folders/bagman.sh "$out" 
./folders/bally-midway.sh "$out"
./folders/capcom.sh "$out"
./folders/cave.sh "$out" 
./folders/cps1.5.sh "$out" 
./folders/cps1.sh "$out"
./folders/cps2.sh "$out"
./folders/crazykong.sh "$out"
./folders/deco.sh "$out"
./folders/exidy.sh "$out"
./folders/galaxian.sh "$out"
./folders/gottlieb.sh "$out"
./folders/irem.sh "$out"
./folders/irem62.sh "$out"
./folders/irem72.sh "$out"
./folders/irem92.sh "$out"
./folders/irem92t.sh "$out"
./folders/irem107.sh "$out"
./folders/jaleco.sh "$out"
./folders/Kiwako.sh "$out"
./folders/konami.sh "$out"
./folders/konami_twin16.sh "$out"
./folders/ladybug.sh "$out"
./folders/mcr1.sh "$out"
./folders/mcr2.sh "$out"
./folders/mcr3.sh "$out"
./folders/midwayy.sh "$out"
./folders/namco.sh "$out"
./folders/namco_sys1.sh "$out"
./folders/neogeo.sh "$out"
./folders/nichibutsu.sh "$out"
./folders/nintendo.sh "$out"
./folders/pacman.sh "$out"
./folders/raizing.sh "$out"
./folders/rare.sh "$out"
./folders/robotron.sh "$out"
./folders/scramble.sh "$out"
./folders/sega.sh "$out"
./folders/segaoutrun.sh "$out"
./folders/segasys1.sh "$out"
./folders/segasys16.sh "$out"
./folders/segasys18.sh "$out"
./folders/segasys2.sh "$out"
./folders/segasyse.sh "$out"
./folders/si.sh "$out"
./folders/snk.sh "$out"
./folders/tad.sh "$out"
./folders/taito.sh "$out"
./folders/taitosj.sh "$out"
./folders/technos.sh "$out"
./folders/Tehkan-Tecmo.sh "$out"
./folders/toaplan.sh "$out"
./folders/universal.sh "$out"
./folders/upl.sh "$out"
./folders/williams.sh "$out"


if [ "$newest" == "1" ]; then
  ./folders/newest.sh "$out"
fi

echo -e "${NC}"



