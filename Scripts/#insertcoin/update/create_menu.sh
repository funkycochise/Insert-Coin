# redirect stdout/stderr to a file
#exec >run.txt 2>&1

ALT=/media/fat/_Arcade/_alternatives

exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

subfolder="folders"

launchdir=$1
#special_echo "launchdir $launchdir"

targetdir=$2
if ([ -z "$2" ]); then 
  targetdir="_Insert_Coin"
fi

OutputRoot="/media/fat/_Arcade/$targetdir"
special_echo "Creating $OutputRoot/"
if [ -d "$OutputRoot" ]; then
   rm -r "$OutputRoot" >/dev/null
fi
mkdir -p "$OutputRoot"

#special_echo "Creating $OutputRoot/_Alpha Denshi"
sh ./$subfolder/alpha.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Atari"
sh ./$subfolder/atari.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Bagman"
sh ./$subfolder/bagman.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Bally-Midway"
sh ./$subfolder/Ballymidway.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Capcom-Mitchell"
sh ./$subfolder/capcom.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Cave"
sh ./$subfolder/cave.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_CPS1"
sh ./$subfolder/cps1.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_CPS1.5"
sh ./$subfolder/cps1.5.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_CPS2"
sh ./$subfolder/cps2.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Crazy Kong"
sh ./$subfolder/crazykong.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Data East-Deco"
sh ./$subfolder/deco.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Galaxian"
sh ./$subfolder/galaxian.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Gottlieb"
sh ./$subfolder/gottlieb.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Irem"
sh ./$subfolder/irem.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Irem-M62 "
sh ./$subfolder/iremm62.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Irem-M72 "
sh ./$subfolder/iremm72.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Irem-M92 "
#sh ./$subfolder/iremm92.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Jaleco"
sh ./$subfolder/jaleco.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Kiwako"
sh ./$subfolder/Kiwako.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Konami"
sh ./$subfolder/konami.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Ladybug"
sh ./$subfolder/ladybug.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_MCR1 "
#sh ./$subfolder/mcr1.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_MCR2 "
#sh ./$subfolder/mcr2.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_MCR3 "
#sh ./$subfolder/mcr3.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_MCR3Mono "
#sh ./$subfolder/mcr3mono.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_MCR3Scroll "
#sh ./$subfolder/mcr3scroll.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Namco"
sh ./$subfolder/namco.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Neo-geo"
sh ./$subfolder/neogeo.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Nichibutsu"
sh ./$subfolder/nichibutsu.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Nintendo"
sh ./$subfolder/nintendo.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Pacman"
sh ./$subfolder/pacman.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Raizing-8ing"
sh ./$subfolder/raizing.sh "$OutputRoot" 

#special_echo "Creating $OutputRoot/_Robotron"
sh ./$subfolder/robotron.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Scramble"
sh ./$subfolder/scramble.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Sega"
sh ./$subfolder/sega.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Sega-Outrun"
sh ./$subfolder/segaoutrun.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Sega-System1"
sh ./$subfolder/segasys1.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Sega-System2"
sh ./$subfolder/segasys2.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Sega-System16"
sh ./$subfolder/segasys16.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Sega-Systeme"
sh ./$subfolder/segasyse.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_SNK"
sh ./$subfolder/snk.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Space Invaders"
sh ./$subfolder/si.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Taito"
sh ./$subfolder/taito.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Technos"
sh ./$subfolder/technos.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Tehkan-Tecmo"
sh ./$subfolder/Tehkan-Tecmo.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Toaplan"
sh ./$subfolder/toaplan.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Universal"
sh ./$subfolder/universal.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Upl"
sh ./$subfolder/upl.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Williams"
sh ./$subfolder/williams.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/__Newest"
sh ./$subfolder/newest.sh "$OutputRoot"

sh ./$subfolder/vertical.sh "$OutputRoot"
sh ./$subfolder/horizontal.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/__Debug"
#sh ./$subfolder/debug.sh "$OutputRoot"

#Tetris Clean up
echo "$ALT/_Tetris"
if [ -d "$ALT/_Tetris" ] 
then
   rm -r "$ALT/_Tetris"
fi

special_echo ""

