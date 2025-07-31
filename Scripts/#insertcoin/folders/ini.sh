
names=/media/fat/Scripts/#insertcoin/names.ini

   if [ -f "$names" ];
   then
      source <(grep essential $names)
      #echo "essential: $essential"
      source <(grep newest $names)
      #echo "newest: $newest"
      #echo ""
      source <(grep horizontal $names)
      #echo "horizontal: $horizontal"
      source <(grep vertical $names)
      #echo "vertical: $vertical"
      #echo ""
      source <(grep genre_action $names)
      #echo "genre_action: $genre_action"
      source <(grep genre_beat $names)
      #echo "genre_beat: $genre_beat"
      source <(grep genre_puzzle $names)
      #echo "genre_puzzle: $genre_puzzle"
      source <(grep genre_sport $names)
      #echo "genre_sport: $genre_sport"
      source <(grep genre_vsf $names)
      #echo "genre_vsf: $genre_vsf"
      source <(grep genre_stg_h $names)
      #echo "genre_stg_h: $genre_stg_h"
      source <(grep genre_stg_v $names)
      #echo "genre_stg_v: $genre_stg_v"
      source <(grep genre_rng_h $names)
      #echo "genre_rng_h: $genre_rng_h"
      source <(grep genre_rng_v $names)
      #echo "genre_rng_v: $genre_rng_v"

      #echo ""
      source <(grep alpha $names)
      #echo "alpha: $alpha"
      source <(grep atari $names)
      #echo "atari: $atari"
      source <(grep bagman $names)
      #echo "bagman: $bagman"
      source <(grep bally_midway $names)
      #echo "bally_midway: $bally_midway"
      source <(grep capcom $names)
      #echo "capcom: $capcom"
      source <(grep cave $names)
      #echo "cave: $cave"
      source <(grep cps1 $names)
      #echo "cps1: $cps1"
      source <(grep cps15 $names)
      #echo "cps15: $cps15"
      source <(grep cps2 $names)
      #echo "cps2: $cps2"
      #echo "deco: $deco"
      source <(grep deco $names)
   fi

function getname {

if [ "$1" == "essential" ]; then
   echo "$essential"
elif [ "$1" == "newest" ]; then
   echo "$newest"
elif [ "$1" == "alpha" ]; then
   #nope
   echo "$alpha"
elif [ "$1" == "atari" ]; then
   echo "$atari"
elif [ "$1" == "bagman" ]; then
   echo "$bagman"
elif [ "$1" == "bally_midway" ]; then
   echo "$bally_midway"
elif [ "$1" == "capcom" ]; then
   echo "$capcom"
elif [ "$1" == "cps1" ]; then
   echo "$cps1"
elif [ "$1" == "cps15" ]; then
   echo "$cps15"
elif [ "$1" == "cps2" ]; then
   echo "$cps2"
elif [ "$1" == "cave" ]; then
   echo "$cave"
elif [ "$1" == "crazykong" ]; then
   #nope
   echo "$crazykong"
elif [ "$1" == "deco" ]; then
   echo "$deco"
elif [ "$1" == "exidy" ]; then
   echo "$exidy"
elif [ "$1" == "galaxian" ]; then
   echo "$galaxian"
elif [ "$1" == "gottlieb" ]; then
   echo "$gottlieb"
elif [ "$1" == "irem" ]; then
   echo "$irem"
elif [ "$1" == "irem62" ]; then
   echo "$irem62"
elif [ "$1" == "irem72" ]; then
   echo "$irem72"
elif [ "$1" == "irem90" ]; then
   echo "$irem90"
elif [ "$1" == "irem92" ]; then
   echo "$irem92"
elif [ "$1" == "irem92t" ]; then
   echo "$irem92t"
elif [ "$1" == "irem107" ]; then
   echo "$irem107"
elif [ "$1" == "jaleco" ]; then
   echo "$jaleco"
elif [ "$1" == "konami" ]; then
   echo "$konami"
elif [ "$1" == "konamitwin16" ]; then
   echo "$konamitwin16"
elif [ "$1" == "ladybug" ]; then
   echo "$ladybug"
elif [ "$1" == "mcr1" ]; then
   echo "$mcr1"
elif [ "$1" == "mcr2" ]; then
   echo "$mcr2"
elif [ "$1" == "mcr3" ]; then
   echo "$mcr3"
elif [ "$1" == "mcr3mono" ]; then
   echo "$mcr3mono"
elif [ "$1" == "mcr3scroll" ]; then
   echo "$mcr3scroll"
elif [ "$1" == "mywayyy" ]; then
   echo "$mywayyy"
elif [ "$1" == "namco" ]; then
   echo "$namco"
elif [ "$1" == "namco_sys1" ]; then
   echo "$namco_sys1"
elif [ "$1" == "namco_sys86" ]; then
   echo "$namco_sys86"
elif [ "$1" == "neogeo" ]; then
   echo "$neogeo"
elif [ "$1" == "nichibutsu" ]; then
   echo "$nichibutsu"
elif [ "$1" == "nintendo" ]; then
   echo "$nintendo"
elif [ "$1" == "pacman" ]; then
   echo "$pacman"
elif [ "$1" == "raizing" ]; then
   echo "$raizing"
elif [ "$1" == "rare" ]; then
   echo "$rare"
elif [ "$1" == "robotron" ]; then
   echo "$robotron"
elif [ "$1" == "scramble" ]; then
   echo "$scramble"
elif [ "$1" == "sega" ]; then
   echo "$sega"
elif [ "$1" == "outrun" ]; then
   echo "$outrun"
elif [ "$1" == "segasys1" ]; then
   echo "$segasys1"
elif [ "$1" == "segasys2" ]; then
   echo "$segasys2"
elif [ "$1" == "segasyse" ]; then
   echo "$segasyse"
elif [ "$1" == "segasys16" ]; then
   echo "$segasys16"
elif [ "$1" == "segasys18" ]; then
   echo "$segasys18"
elif [ "$1" == "segastv" ]; then
   echo "$segastv"
elif [ "$1" == "snk" ]; then
   echo "$snk"
elif [ "$1" == "si" ]; then
   echo "$si"
elif [ "$1" == "stern" ]; then
   echo "$stern"
elif [ "$1" == "tad" ]; then
   echo "$tad"
elif [ "$1" == "taito" ]; then
   echo "$taito"
elif [ "$1" == "taitof2" ]; then
   echo "$taitof2"
elif [ "$1" == "taitosj" ]; then
   echo "$taitosj"
elif [ "$1" == "technos" ]; then
   echo "$technos"
elif [ "$1" == "technos16" ]; then
   echo "$technos16"
elif [ "$1" == "tecmo" ]; then
   echo "$tecmo"
elif [ "$1" == "toaplan" ]; then
   echo "$toaplan"
elif [ "$1" == "universal" ]; then
   echo "$universal"
elif [ "$1" == "upl" ]; then
   echo "$upl"
elif [ "$1" == "williams" ]; then
   echo "$williams"
elif [ "$1" == "horizontal" ]; then
   echo "$horizontal"
elif [ "$1" == "vertical" ]; then
   echo "$vertical"
elif [ "$1" == "genre_action" ]; then
   echo "$vertical"
elif [ "$1" == "genre_beat" ]; then
   echo "$genre_beat"
elif [ "$1" == "genre_puzzle" ]; then
   echo "$genre_puzzle"
elif [ "$1" == "genre_sport" ]; then
   echo "$genre_sport"
elif [ "$1" == "genre_vsf" ]; then
   echo "$genre_vsf"
elif [ "$1" == "genre_stg_h" ]; then
   echo "$genre_stg_h"
elif [ "$1" == "genre_stg_v" ]; then
   echo "$genre_stg_v"
elif [ "$1" == "genre_rng_h" ]; then
   echo "$genre_rng_h"
elif [ "$1" == "genre_rng_v" ]; then
   echo "$genre_rng_v"
fi
}

