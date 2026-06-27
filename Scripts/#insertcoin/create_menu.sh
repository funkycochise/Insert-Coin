#!/bin/bash
source ./folders/functions.sh

if [ "$debug" == "1" ]; then
   echo "launchdir: $launchdir"
   echo "targetfolder: $targetfolder"
fi

echo "Creating $targetfolder"

function linkcores {
if [ ! -d $targetfolder/cores ]; then
   ln -s $ARCADE/cores $targetfolder/cores
fi 
}

./folders/alpha.sh
./folders/atari.sh
./folders/bagman.sh
./folders/bally-midway.sh
./folders/banpresto.sh 
./folders/capcom.sh 
./folders/cave.sh
./folders/cps1.5.sh 
./folders/cps1.sh
./folders/cps2.sh
./folders/cps3.sh
./folders/crazykong.sh 
./folders/deco.sh
./folders/deco8.sh
./folders/deco16.sh  
./folders/exidy.sh 
./folders/galaxian.sh 
./folders/gottlieb.sh 
./folders/igspgm.sh 
./folders/irem.sh 
./folders/irem62.sh 
./folders/irem72.sh 
./folders/irem90.sh 
./folders/irem92.sh 
./folders/irem92t.sh 
./folders/irem107.sh 
./folders/jaleco.sh 
./folders/Kiwako.sh 
./folders/konami.sh 
./folders/konami_twin16.sh 
./folders/ladybug.sh 
./folders/mcr1.sh 
./folders/mcr2.sh 
./folders/mcr3.sh 
./folders/mcr3mono.sh 
./folders/mcr3scroll.sh 
./folders/midwayyz.sh 
./folders/namco.sh 
./folders/namco_sys1.sh 
./folders/namco_sys86.sh 
./folders/neogeo.sh 
./folders/nichibutsu.sh 
./folders/nintendo.sh 
./folders/nmk.sh 
./folders/orca.sh 
./folders/pacman.sh 
./folders/psikyosh2.sh 
./folders/raizing.sh 
./folders/rare.sh 
./folders/robotron.sh 
./folders/scramble.sh 
./folders/sega.sh 
./folders/segamp.sh 
./folders/segaoutrun.sh 
./folders/segasys1.sh 
./folders/segasys16.sh 
./folders/segasys18.sh 
./folders/segasys2.sh 
./folders/segasyse.sh 
./folders/segastv.sh 
./folders/segag80.sh 
./folders/seta.sh 
./folders/si.sh 
./folders/snk.sh 
./folders/stern.sh 
./folders/success.sh 
./folders/tad.sh 
./folders/taito.sh 
./folders/taitof2.sh 
./folders/taitosj.sh 
./folders/technos.sh 
./folders/technos16.sh 
./folders/Tehkan-Tecmo.sh 
./folders/toaplan.sh 
./folders/toaplan_stg.sh 
./folders/universal.sh 
./folders/upl.sh 
./folders/vs.sh 
./folders/williams.sh 
if [ "$newest" == "1" ]; then
  ./folders/newest.sh 
fi
if [ "$essential" == "1" ]; then
   ./folders/essentials.sh 
fi
if test -f "./update/favorites.sh"; then
   ./update/favorites.sh 
fi

#cores in insert coin
if [ "$rootfolder" == "1" ]; then
   linkcores
fi


echo -e "${NC}"



