#!/bin/bash
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

source ./folders/functions.sh

OutputRoot=$1
RegSourceRoot=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives
RegSourceRoot=/media/fat/_Arcade

MainDir="__Horizontal"

cd $OutputRoot

rm -r "/media/fat/_Arcade/$OutputRoot/$MainDir"
create "$MainDir"

cd /media/fat/Scripts/#insertcoin

special_echo "Creating $OutputRoot/$MainDir"
./folders/atari.sh "$OutputRoot/$MainDir" "H"
./folders/bagman.sh "$OutputRoot/$MainDir" "H"
./folders/Ballymidway.sh "$OutputRoot/$MainDir" "H"
./folders/capcom.sh "$OutputRoot/$MainDir" "H"
./folders/cave.sh "$OutputRoot/$MainDir" "H"
./folders/cps1.sh "$OutputRoot/$MainDir" "H"
./folders/cps1.5.sh "$OutputRoot/$MainDir" "H"
./folders/cps2.sh "$OutputRoot/$MainDir" "H"
./folders/crazykong.sh "$OutputRoot/$MainDir" "H"
./folders/deco.sh "$OutputRoot/$MainDir" "H"
./folders/galaxian.sh "$OutputRoot/$MainDir" "H"
#./folders/gottlieb.sh "$OutputRoot/$MainDir" "H"
./folders/irem.sh "$OutputRoot/$MainDir" "H"
./folders/iremm62.sh "$OutputRoot/$MainDir" "H"
./folders/iremm72.sh "$OutputRoot/$MainDir" "H"
./folders/jaleco.sh "$OutputRoot/$MainDir" "H"
./folders/konami.sh "$OutputRoot/$MainDir" "H"
./folders/ladybug.sh "$OutputRoot/$MainDir" "H"
#./folders/mcr1.sh "$OutputRoot/$MainDir" "H"
#./folders/mcr2.sh "$OutputRoot/$MainDir" "H"
#./folders/mcr3.sh "$OutputRoot/$MainDir" "H"
#./folders/mcr3mono.sh "$OutputRoot/$MainDir" "H"
#./folders/mcr3scroll.sh "$OutputRoot/$MainDir" "H"
./folders/namco.sh "$OutputRoot/$MainDir" "H"
./folders/neogeo.sh "$OutputRoot/$MainDir" "H"
./folders/nichibutsu.sh "$OutputRoot/$MainDir" "H"
./folders/nintendo.sh "$OutputRoot/$MainDir" "H"
./folders/pacman.sh "$OutputRoot/$MainDir" "H"
#./folders/raizing.sh "$OutputRoot/$MainDir" "H"
./folders/robotron.sh "$OutputRoot/$MainDir" "H"
./folders/scramble.sh "$OutputRoot/$MainDir" "H"
#./folders/sega.sh "$OutputRoot/$MainDir" "H"
./folders/segaoutrun.sh "$OutputRoot/$MainDir" "H"
./folders/segasys1.sh "$OutputRoot/$MainDir" "H"
./folders/segasys2.sh "$OutputRoot/$MainDir" "H"
./folders/segasys16.sh "$OutputRoot/$MainDir" "H"
./folders/segasyse.sh "$OutputRoot/$MainDir" "H"
./folders/snk.sh "$OutputRoot/$MainDir" "H"
./folders/si.sh "$OutputRoot/$MainDir" "H"
./folders/taito.sh "$OutputRoot/$MainDir" "H"
./folders/technos.sh "$OutputRoot/$MainDir" "H"
./folders/Tehkan-Tecmo.sh "$OutputRoot/$MainDir" "H"
./folders/toaplan.sh "$OutputRoot/$MainDir" "H"
./folders/universal.sh "$OutputRoot/$MainDir" "H"
./folders/upl.sh "$OutputRoot/$MainDir" "H"
./folders/williams.sh "$OutputRoot/$MainDir" "H"
