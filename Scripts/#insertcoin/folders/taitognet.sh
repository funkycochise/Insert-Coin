#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$taitognet
else
   dir=$taito
fi

resh=$(exist "Ray Crisis (V2.03O).mra")
resv=$(exist "XII Stag (V2.01J).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then  

add "$dir" "V" "Psyvariar -Medium Unit- (V2.02O).mra" "_Psyvariar -Medium Unit-" "" "STG"
add "$dir" "V" "Psyvariar -Revision- (V2.04J).mra" "_Psyvariar -Revision-" "" "STG"
add "$dir" "V" "Shikigami no Shiro (V2.03J).mra" "_Shikigami no Shiro" "" "STG"
add "$dir" "V" "Space Invaders Anniversary (V2.02J).mra" "_Space Invaders Anniversary" "" "STG"
add "$dir" "V" "XII Stag (V2.01J).mra" "_XII Stag" "" "STG"

add "$dir" "H" "Chaos Heat (V2.09O).mra" "_Chaos Heat" "" "STG"
add "$dir" "H" "Flip Maze (V2.04J).mra" "_Flip Maze" "" "PUZ"
add "$dir" "H" "Go By RC (V2.03O).mra" "_Go By RC" "" "RAC"
add "$dir" "H" "Kollon (V2.04JA).mra" "_Kollon" "" "PUZ"
add "$dir" "H" "Mahjong Oh (V2.06J).mra" "_Mahjong Oh" "" "MAH"
add "$dir" "H" "Night Raid (V2.03J).mra" "_Night Raid" "" "STG"
add "$dir" "H" "Otenami Haiken (V2.04J).mra" "_Otenami Haiken" "" "MIN"
add "$dir" "H" "Otenami Haiken Final (V2.07JC).mra" "" "" "MIN"
add "$dir" "H" "Otenki Kororin (V2.01J).mra" "_Otenki Kororin" "" "PUZ"
add "$dir" "H" "Ray Crisis (V2.03O).mra" "_Ray Crisis" "" "STG"
add "$dir" "H" "Shanghai Sangokuhai Tougi (Ver 2.01J).mra" "_Shanghai Sangokuhai Tougi" "" "PUZ"
add "$dir" "H" "Shanghai Shoryu Sairin (V2.03J).mra" "_Shanghai Shoryu Sairin" "" "PUZ"

add "$dir" "H" "Soutenryu (V2.07J).mra" "_Soutenryu" "" "PUZ"
add "$dir" "H" "Super Puzzle Bobble (V2.05O).mra" "_Super Puzzle Bobble" "" "PUZ"
add "$dir" "H" "Usagi (V2.02J).mra" "_Usagi" "" "MAH"

add "$dir" "H" "Zoku Otenamihaiken (V2.03J).mra" "_Zoku Otenamihaiken" "" "MIN"
add "$dir" "H" "Zooo (V2.01JA).mra" "_Zooo" "" "PUZ" 

  dot
fi
