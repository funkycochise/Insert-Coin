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

MainDir="__Vertical"

cd $OutputRoot

rm -r "/media/fat/_Arcade/$OutputRoot/$MainDir"
create "$MainDir"

cd /media/fat/Scripts/#insertcoin

special_echo "Creating $OutputRoot/$MainDir"
./folders/atari.sh "$OutputRoot/$MainDir" "V"
#./folders/bagman.sh "$OutputRoot/$MainDir" "V"
./folders/Ballymidway.sh "$OutputRoot/$MainDir" "V"
./folders/capcom.sh "$OutputRoot/$MainDir" "V"
./folders/cave.sh "$OutputRoot/$MainDir" "V"
./folders/cps1.sh "$OutputRoot/$MainDir" "V"
#./folders/cps1.5.sh "$OutputRoot/$MainDir" "V"
./folders/cps2.sh "$OutputRoot/$MainDir" "V"
./folders/crazykong.sh "$OutputRoot/$MainDir" "V"
./folders/deco.sh "$OutputRoot/$MainDir" "V"
./folders/galaxian.sh "$OutputRoot/$MainDir" "V"
./folders/gottlieb.sh "$OutputRoot/$MainDir" "V"
./folders/irem.sh "$OutputRoot/$MainDir" "V"
./folders/iremm62.sh "$OutputRoot/$MainDir" "V"
./folders/iremm72.sh "$OutputRoot/$MainDir" "V"
./folders/iremm92.sh "$OutputRoot/$MainDir" "V"
./folders/jaleco.sh "$OutputRoot/$MainDir" "V"
./folders/konami.sh "$OutputRoot/$MainDir" "V"
./folders/ladybug.sh "$OutputRoot/$MainDir" "V"
#./folders/mcr1.sh "$OutputRoot/$MainDir" "V"
#./folders/mcr2.sh "$OutputRoot/$MainDir" "V"
#./folders/mcr3.sh "$OutputRoot/$MainDir" "V"
#./folders/mcr3mono.sh "$OutputRoot/$MainDir" "V"
#./folders/mcr3scroll.sh "$OutputRoot/$MainDir" "V"
./folders/namco.sh "$OutputRoot/$MainDir" "V"
./folders/neogeo.sh "$OutputRoot/$MainDir" "V"
./folders/nichibutsu.sh "$OutputRoot/$MainDir" "V"
./folders/nintendo.sh "$OutputRoot/$MainDir" "V"
./folders/pacman.sh "$OutputRoot/$MainDir" "V"
./folders/raizing.sh "$OutputRoot/$MainDir" "V"
./folders/robotron.sh "$OutputRoot/$MainDir" "V"
./folders/scramble.sh "$OutputRoot/$MainDir" "V"
./folders/sega.sh "$OutputRoot/$MainDir" "V"
./folders/segasys1.sh "$OutputRoot/$MainDir" "V"
./folders/segasys2.sh "$OutputRoot/$MainDir" "V"
./folders/segasys16.sh "$OutputRoot/$MainDir" "V"
#./folders/segasyse.sh "$OutputRoot/$MainDir" "V"
./folders/snk.sh "$OutputRoot/$MainDir" "V"
./folders/si.sh "$OutputRoot/$MainDir" "V"
./folders/taito.sh "$OutputRoot/$MainDir" "V"
#./folders/technos.sh "$OutputRoot/$MainDir" "V"
./folders/Tehkan-Tecmo.sh "$OutputRoot/$MainDir" "V"
./folders/toaplan.sh "$OutputRoot/$MainDir" "V"
./folders/universal.sh "$OutputRoot/$MainDir" "V"
#./folders/upl.sh "$OutputRoot/$MainDir" "V"
#./folders/williams.sh "$OutputRoot/$MainDir" "V"
