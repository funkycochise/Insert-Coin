#!/bin/bash
source ./folders/functions.sh
dir=$fuuki

resh=$(exist "Asura Blade - Sword of Dynasty (Japan).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Asura Blade - Sword of Dynasty (Japan).mra" "_Asura Blade - Sword of Dynasty" "" "VSF"
   add "$dir" "H" "Asura Buster - Eternal Warriors (USA).mra" "_Asura Buster - Eternal Warriors" "" "VSF"
   add "$dir" "H" "Gyakuten!! Puzzle Bancho (Japan, set 1).mra" "_Gyakuten!! Puzzle Bancho" "" "PUZ"
   add "$dir" "H" "Susume! Mile Smile - Go Go! Mile Smile (newer).mra" "_Susume! Mile Smile - Go Go! Mile Smile" "" ""
   dot
fi