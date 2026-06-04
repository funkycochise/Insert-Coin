#!/bin/bash
set -a
debug=$1
source ./folders/setup.sh
set +a

#echo "InsertCoin Rebuild"

function dump {

echo "insertcoin_menu=$insertcoin_menu"
echo "main_mister=$main_mister"
echo "mame_rom=$mame_rom"
echo "neogeo_rom=$neogeo_rom"
echo "gnw_rom=$gnw_rom"
echo "additional_res=$additional_res"
echo "console_core=$console_core"
echo "dualsdram=$dualsdram"

echo "=== CONSOLE ==="
echo "psx=$psx"
echo "s32x=$s32x"
echo "saturn=$saturn"
echo "sgb=$sgb"
echo "neogeo=$neogeo"
echo "n64=$n64"
echo "jaguar=$jaguar"
echo "cdi=$cdi"
echo "pce=$pce"
echo "nes=$nes"
echo "snes=$snes"
echo "megadrive=$megadrive"
echo "virtualboy=$virtualboy"
echo "pana3do=$pana3do"

echo "=== CLEAN ==="
echo "console_mgl=$console_mgl"
echo "obsolete_core=$obsolete_core"
echo "remove_other=$remove_other"

echo "=== FOLDER ==="
echo "essential=$essential"
echo "rootfolder=$rootfolder"
echo "show_system=$show_system"
echo "show_genre=$show_genre"
echo "manufacturer_subfolder=$manufacturer_subfolder"
echo "action=$action"
echo "beat=$beat"
echo "horizontal=$horizontal"
echo "vertical=$vertical"
echo "newest=$newest"
echo "puzzle=$puzzle"
echo "sport=$sport"
echo "stg_h=$stg_h"
echo "stg_v=$stg_v"
echo "vsf=$vsf"
echo "rng_h=$rng_h"
echo "rng_v=$rng_v"

echo ""
echo ""
echo ""

echo "=== FOLDER ==="
echo "essential=$essential"
echo "newest=$newest"

echo "=== GENRE ==="
echo "genre_horizontal=$genre_horizontal"
echo "genre_vertical=$genre_vertical"
echo "insertcoin=$insertcoin"
echo "genre_action=$genre_action"
echo "genre_beat=$genre_beat"
echo "genre_puzzle=$genre_puzzle"
echo "genre_sport=$genre_sport"
echo "genre_vsf=$genre_vsf"
echo "genre_stg_h=$genre_stg_h"
echo "genre_stg_v=$genre_stg_v"
echo "genre_rng_h=$genre_rng_h"
echo "genre_rng_v=$genre_rng_v"

echo "=== SYSTEMS / MANUFACTURERS ==="
echo "alpha=$alpha"
echo "atari=$atari"
echo "bagman=$bagman"
echo "bally_midway=$bally_midway"
echo "banpresto=$banpresto"
echo "capcom=$capcom"
echo "cps1=$cps1"
echo "cps15=$cps15"
echo "cps2=$cps2"
echo "cps3=$cps3"
echo "cave=$cave"
echo "crazykong=$crazykong"
echo "deco=$deco"
echo "exidy=$exidy"
echo "galaxian=$galaxian"
echo "gottlieb=$gottlieb"
echo "igspgm=$igspgm"
echo "irem=$irem"
echo "irem62=$irem62"
echo "irem72=$irem72"
echo "irem90=$irem90"
echo "irem92=$irem92"
echo "irem92t=$irem92t"
echo "irem107=$irem107"
echo "jaleco=$jaleco"
echo "kiwako=$kiwako"
echo "konami=$konami"
echo "konamitwin16=$konamitwin16"
echo "ladybug=$ladybug"
echo "mcr1=$mcr1"
echo "mcr2=$mcr2"
echo "mcr3=$mcr3"
echo "mcr3mono=$mcr3mono"
echo "mcr3scroll=$mcr3scroll"
echo "midwaytyz=$midwaytyz"
echo "namco=$namco"
echo "namco_sys1=$namco_sys1"
echo "namco_sys86=$namco_sys86"
echo "neogeo=$neogeo"
echo "nichibutsu=$nichibutsu"
echo "nintendo=$nintendo"
echo "nmk=$nmk"
echo "orca=$orca"
echo "pacman=$pacman"
echo "raizing=$raizing"
echo "rare=$rare"
echo "robotron=$robotron"
echo "scramble=$scramble"
echo "sega=$sega"
echo "seta=$seta"
echo "outrun=$outrun"
echo "segasys1=$segasys1"
echo "segasys2=$segasys2"
echo "segasyse=$segasyse"
echo "segasys16=$segasys16"
echo "segasys18=$segasys18"
echo "segastv=$segastv"
echo "segag80=$segag80"
echo "snk=$snk"
echo "si=$si"
echo "stern=$stern"
echo "success=$success"
echo "tad=$tad"
echo "taito=$taito"
echo "taitof2=$taitof2"
echo "taitosj=$taitosj"
echo "technos=$technos"
echo "technos16=$technos16"
echo "tecmo=$tecmo"
echo "toaplan=$toaplan"
echo "toaplanstg=$toaplanstg"
echo "universal=$universal"
echo "upl=$upl"
echo "vs=$vs"
echo "williams=$williams"
}

if [ "$TERM" == "vt102" ]; then
./update/banner.sh $COL
else
./update/banner.sh $COL
fi

if test -f "/media/fat/Scripts/#insertcoin/out.txt"; 
then
   rm -r /media/fat/Scripts/#insertcoin/out.txt
fi

#clean of existing folders
if test -f "./update/sweep.sh"; then
  ./update/sweep.sh
fi

if [ "$additional_res" == "1" ]; then
   if test -f "./update/install_res.sh"; then
      ./update/install_res.sh
   fi
fi

if [ "$insertcoin_menu" == "1" ]; then
   start_time=$SECONDS
   ./update/create_menu.sh
   elapsed=$(( SECONDS - start_time ))
   echo -n -e "Menu Creation process completed in $elapsed sec.\n"
fi

if test -f "/media/fat/Scripts/#local/key2.sh"; then
   /media/fat/Scripts/#local/key2.sh
fi
if test -f "./update/install_local.sh"; then
   ./update/install_local.sh "$targetfolder"
fi
if [ "$mame_rom" == "1" ]; then
   ./update/mame.sh
fi
if [ "$neogeo_rom" == "1" ]; then
   ./update/neogeo.sh
fi

if [ "$gnw_rom" == "1" ]; then
   ./update/gw.sh
fi
if [ "$console_mgl" == "1" ]; then
   ./update/clean_console.sh
fi
#if [ "$obsolete_core" == "1" ]; then
   ./update/clean_obsolete.sh
#fi 
if [ "$console_core" == "1" ]; then
   ./update/update_console.sh
fi

echo -e "${BLUE}${CHECK}${NC} Latest updated _Console cores :"
find /media/fat/_Console/*.rbf  -mtime 0 -printf '%p\n' 2>/dev/null | sort -r | more
echo -e "${BLUE}${CHECK}${NC} Latest updated _Arcade cores :"
find /media/fat/_Arcade/cores/*.rbf  -mtime 0 -printf '%p\n' 2>/dev/null | sort -r | more

sh ./update/post.sh

if [ "$main_mister" == "1" ]; then
   ./update/update_main_mister.sh
   reboot
   #echo "main Mister"
fi

if [ "$debug" == "1" ]; then
   dump
fi
