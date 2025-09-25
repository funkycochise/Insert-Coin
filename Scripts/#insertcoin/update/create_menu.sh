#!/bin/bash

source ./folders/functions.sh

launchdir=$1
#echo "launchdir: $launchdir"
targetdir=$2
#echo "targetdir: $targetdir"
COL=$3

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi

loadsetup

SECONDS=0

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo "Creating $targetdir"

function linkcores {
#echo "Linking cores"
if [ ! -d "$targetdir/cores" ]; then
ln -s "$ARCADE/cores" "$targetdir/cores"
fi 
}

./folders/alpha.sh "$targetdir"
./folders/atari.sh "$targetdir"
./folders/bagman.sh "$targetdir" 
./folders/bally-midway.sh "$targetdir"
./folders/capcom.sh "$targetdir"
./folders/cave.sh "$targetdir" 
./folders/cps1.5.sh "$targetdir" 
./folders/cps1.sh "$targetdir"
./folders/cps2.sh "$targetdir"
./folders/crazykong.sh "$targetdir"
./folders/deco.sh "$targetdir"
./folders/exidy.sh "$targetdir"
./folders/galaxian.sh "$targetdir"
./folders/gottlieb.sh "$targetdir"
./folders/irem.sh "$targetdir"
./folders/irem62.sh "$targetdir"
./folders/irem72.sh "$targetdir"
./folders/irem90.sh "$targetdir"
./folders/irem92.sh "$targetdir"
./folders/irem92t.sh "$targetdir"
./folders/irem107.sh "$targetdir"
./folders/jaleco.sh "$targetdir"
./folders/Kiwako.sh "$targetdir"
./folders/konami.sh "$targetdir"
./folders/konami_twin16.sh "$targetdir"
./folders/ladybug.sh "$targetdir"
./folders/mcr1.sh "$targetdir"
./folders/mcr2.sh "$targetdir"
./folders/mcr3.sh "$targetdir"
./folders/mcr3mono.sh "$targetdir"
./folders/mcr3scroll.sh "$targetdir"
./folders/midwayy.sh "$targetdir"
./folders/namco.sh "$targetdir"
./folders/namco_sys1.sh "$targetdir"
./folders/namco_sys86.sh "$targetdir"
./folders/neogeo.sh "$targetdir"
./folders/nichibutsu.sh "$targetdir"
./folders/nintendo.sh "$targetdir"
./folders/pacman.sh "$targetdir"
./folders/raizing.sh "$targetdir"
./folders/rare.sh "$targetdir"
./folders/robotron.sh "$targetdir"
./folders/scramble.sh "$targetdir"
./folders/sega.sh "$targetdir"
./folders/segaoutrun.sh "$targetdir"
./folders/segasys1.sh "$targetdir"
./folders/segasys16.sh "$targetdir"
./folders/segasys18.sh "$targetdir"
./folders/segasys2.sh "$targetdir"
./folders/segasyse.sh "$targetdir"
./folders/segastv.sh "$targetdir"
./folders/si.sh "$targetdir"
./folders/snk.sh "$targetdir"
./folders/stern.sh "$targetdir"
./folders/tad.sh "$targetdir"
./folders/taito.sh "$targetdir"
./folders/taitof2.sh "$targetdir"
./folders/taitosj.sh "$targetdir"
./folders/technos.sh "$targetdir"
./folders/technos16.sh "$targetdir"
./folders/Tehkan-Tecmo.sh "$targetdir"
./folders/toaplan.sh "$targetdir"
./folders/universal.sh "$targetdir"
./folders/upl.sh "$targetdir"
./folders/williams.sh "$targetdir"

if [ "$newest" == "1" ]; then
  ./folders/newest.sh "$targetdir"
fi

if [ "$essential" == "1" ]; then
   ./folders/essentials.sh "$targetdir"
fi

#cores in insert coin
if [ "$rootfolder" == "1" ]; then
   linkcores
fi


echo -e "${NC}"



