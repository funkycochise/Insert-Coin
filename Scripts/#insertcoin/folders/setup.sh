#!/bin/bash

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
NC='\033[0m' # No Color

if [ "$TERM" == "xterm" ]; then
   CHECK="✓"
   TAB=""
else
   CHECK="•"
   #CHECK="»"
   TAB="  "
fi

ini=/media/fat/Scripts/#insertcoin/setup.ini
names=/media/fat/Scripts/#insertcoin/names.ini
ARCADE=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives
CORE=/media/fat/_Arcade/Cores
CONSOLE=/media/fat/_Console
NEOGEO=/media/fat/games/NEOGEO

ini_get() {
    local file="$1"
    local key="$2"

    awk -F= -v k="$key" '
    {
        gsub(/\r/, "", $0)

        if ($0 ~ /^[[:space:]]*\[/) next
        if (NF < 2) next

        gsub(/^[ \t]+|[ \t]+$/, "", $1)
        gsub(/^[ \t]+|[ \t]+$/, "", $2)

        if ($1 == k) {
            print $2
            exit
        }
    }' "$file"
}

function loadsetup {


#update
insertcoin_menu=$(ini_get "$ini" insertcoin_menu)
main_mister=$(ini_get "$ini" main_mister)
mame_rom=$(ini_get "$ini" mame_rom)
neogeo_rom=$(ini_get "$ini" neogeo_rom)
gnw_rom=$(ini_get "$ini" gnw_rom)
additional_res=$(ini_get "$ini" additional_res)
console_core=$(ini_get "$ini" console_core)
dualsdram=$(ini_get "$ini" dualsdram)

#console
psx=$(ini_get "$ini" psx)
s32x=$(ini_get "$ini" s32x)
saturn=$(ini_get "$ini" saturn)
sgb=$(ini_get "$ini" sgb)
neogeo=$(ini_get "$ini" neogeo)
n64=$(ini_get "$ini" n64)
jaguar=$(ini_get "$ini" jaguar)
cdi=$(ini_get "$ini" cdi)
pce=$(ini_get "$ini" pce)
nes=$(ini_get "$ini" nes)
snes=$(ini_get "$ini" snes)
megadrive=$(ini_get "$ini" megadrive)
virtualboy=$(ini_get "$ini" virtualboy)
pana3do=$(ini_get "$ini" pana3do)

#clean
console_mgl=$(ini_get "$ini" console_mgl)
obsolete_core=$(ini_get "$ini" obsolete_core)
remove_other=$(ini_get "$ini" remove_other)

#folder
essential=$(ini_get "$ini" essential)
rootfolder=$(ini_get "$ini" rootfolder)
show_system=$(ini_get "$ini" show_system)
show_genre=$(ini_get "$ini" show_genre)
manufacturer_subfolder=$(ini_get "$ini" manufacturer_subfolder)
action=$(ini_get "$ini" action)
beat=$(ini_get "$ini" beat)
horizontal=$(ini_get "$ini" horizontal)
vertical=$(ini_get "$ini" vertical)
newest=$(ini_get "$ini" newest)
puzzle=$(ini_get "$ini" puzzle)
sport=$(ini_get "$ini" sport)
stg_h=$(ini_get "$ini" stg_h)
stg_v=$(ini_get "$ini" stg_v)
vsf=$(ini_get "$ini" vsf)
rng_h=$(ini_get "$ini" rng_h)
rng_v=$(ini_get "$ini" rng_v)

}

function loadnames {

dir_essential=$(ini_get "$names" dir_essential)
dir_newest=$(ini_get "$names" dir_newest)

genre_horizontal=$(ini_get "$names" genre_horizontal)
genre_vertical=$(ini_get "$names" genre_vertical)
insertcoin=$(ini_get "$names" insertcoin)
genre_action=$(ini_get "$names" genre_action)
genre_beat=$(ini_get "$names" genre_beat)
genre_puzzle=$(ini_get "$names" genre_puzzle)
genre_sport=$(ini_get "$names" genre_sport)
genre_vsf=$(ini_get "$names" genre_vsf)
genre_stg_h=$(ini_get "$names" genre_stg_h)
genre_stg_v=$(ini_get "$names" genre_stg_v)
genre_rng_h=$(ini_get "$names" genre_rng_h)
genre_rng_v=$(ini_get "$names" genre_rng_v)

alpha=$(ini_get "$names" alpha)
atari=$(ini_get "$names" atari)
bagman=$(ini_get "$names" bagman)
bally_midway=$(ini_get "$names" bally_midway)
banpresto=$(ini_get "$names" banpresto)
capcom=$(ini_get "$names" capcom)
comad=$(ini_get "$names" comad)
cps1=$(ini_get "$names" cps1)
cps15=$(ini_get "$names" cps15)
cps2=$(ini_get "$names" cps2)
cps3=$(ini_get "$names" cps3)
cave=$(ini_get "$names" cave)
crazykong=$(ini_get "$names" crazykong)
deco=$(ini_get "$names" deco)
decocassette=$(ini_get "$names" decocassette)
deco8=$(ini_get "$names" deco8)
deco16=$(ini_get "$names" deco16)
exidy=$(ini_get "$names" exidy)
gaelco=$(ini_get "$names" gaelco)
galaxian=$(ini_get "$names" galaxian)
gottlieb=$(ini_get "$names" gottlieb)
igspgm=$(ini_get "$names" igspgm)
irem=$(ini_get "$names" irem)
irem62=$(ini_get "$names" irem62)
irem72=$(ini_get "$names" irem72)
irem90=$(ini_get "$names" irem90)
irem92=$(ini_get "$names" irem92)
irem92t=$(ini_get "$names" irem92t)
irem107=$(ini_get "$names" irem107)
jaleco=$(ini_get "$names" jaleco)
kiwako=$(ini_get "$names" kiwako)
konami=$(ini_get "$names" konami)
konamitwin16=$(ini_get "$names" konamitwin16)
ladybug=$(ini_get "$names" ladybug)
mcr1=$(ini_get "$names" mcr1)
mcr2=$(ini_get "$names" mcr2)
mcr3=$(ini_get "$names" mcr3)
mcr3mono=$(ini_get "$names" mcr3mono)
mcr3scroll=$(ini_get "$names" mcr3scroll)
midwaytyz=$(ini_get "$names" midwaytyz)
namco=$(ini_get "$names" namco)
namco_sys1=$(ini_get "$names" namco_sys1)
namco_sys11=$(ini_get "$names" namco_sys11)
namco_sys86=$(ini_get "$names" namco_sys86)
neogeo=$(ini_get "$names" neogeo)
nichibutsu=$(ini_get "$names" nichibutsu)
nintendo=$(ini_get "$names" nintendo)
nmk=$(ini_get "$names" nmk)
orca=$(ini_get "$names" orca)
pacman=$(ini_get "$names" pacman)
psikyosh2=$(ini_get "$names" psikyosh2)
raizing=$(ini_get "$names" raizing)
rare=$(ini_get "$names" rare)
robotron=$(ini_get "$names" robotron)
scramble=$(ini_get "$names" scramble)
sega=$(ini_get "$names" sega)
segamegaplay=$(ini_get "$names" segamegaplay)
seta=$(ini_get "$names" seta)
outrun=$(ini_get "$names" outrun)
segasys1=$(ini_get "$names" segasys1)
segasys2=$(ini_get "$names" segasys2)
segasyse=$(ini_get "$names" segasyse)
segasys16=$(ini_get "$names" segasys16)
segasys18=$(ini_get "$names" segasys18)
segastv=$(ini_get "$names" segastv)
segag80=$(ini_get "$names" segag80)
segakyugo=$(ini_get "$names" segakyugo)
snk=$(ini_get "$names" snk)
si=$(ini_get "$names" si)
stern=$(ini_get "$names" stern)
success=$(ini_get "$names" success)
tad=$(ini_get "$names" tad)
taito=$(ini_get "$names" taito)
taitof2=$(ini_get "$names" taitof2)
taitosj=$(ini_get "$names" taitosj)
technos=$(ini_get "$names" technos)
technos16=$(ini_get "$names" technos16)
tecmo=$(ini_get "$names" tecmo)
toaplan=$(ini_get "$names" toaplan)
toaplanstg=$(ini_get "$names" toaplanstg)
universal=$(ini_get "$names" universal)
upl=$(ini_get "$names" upl)
vs=$(ini_get "$names" vs)
williams=$(ini_get "$names" williams)
}

loadsetup
loadnames

COL=$(( $RANDOM % 12 + 1 ))
launchdir=$(pwd)
if [ "$rootfolder" != "1" ]; then
   targetfolder="/media/fat/_Arcade/$insertcoin"
else
   targetfolder="/media/fat/$insertcoin"
fi
if [ "$debug" == "1" ]; then
   echo "launchdir : $launchdir"
   echo "targetfolder : $targetfolder"
fi
