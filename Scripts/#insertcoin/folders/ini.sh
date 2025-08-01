
names=/media/fat/Scripts/#insertcoin/names.ini

   if [ -f "$names" ];
   then
      source <(grep essential $names)
      echo "essential: $essential"
      source <(grep newest $names)
      echo "newest: $newest"
      echo ""
      source <(grep horizontal $names)
      echo "horizontal: $horizontal"
      source <(grep vertical $names)
      echo "vertical: $vertical"
      echo ""
      source <(grep genre_action $names)
      echo "genre_action: $genre_action"
      source <(grep genre_beat $names)
      echo "genre_beat: $genre_beat"
      source <(grep genre_puzzle $names)
      echo "genre_puzzle: $genre_puzzle"
      source <(grep genre_sport $names)
      echo "genre_sport: $genre_sport"
      source <(grep genre_vsf $names)
      echo "genre_vsf: $genre_vsf"
      source <(grep genre_stg_h $names)
      echo "genre_stg_h: $genre_stg_h"
      source <(grep genre_stg_v $names)
      echo "genre_stg_v: $genre_stg_v"
      source <(grep genre_rng_h $names)
      echo "genre_rng_h: $genre_rng_h"
      source <(grep genre_rng_v $names)
      echo "genre_rng_v: $genre_rng_v"

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

