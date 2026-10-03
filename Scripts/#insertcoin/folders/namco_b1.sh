#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_b1
else
   dir=$namco
fi

resv=$(exist "Nebulas Ray (World, NR2).mra")
resh=$(exist "Point Blank (World, GN2 Rev B, set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V" "Nebulas Ray (World, NR2).mra" "_Nebulas Ray" "" "STG"

   add "$dir" "H" "Great Sluggers '94.mra" "_Great Sluggers '94" "" "SPO"
   add "$dir" "H" "Great Sluggers (Japan).mra" "" "" "SPO"
   add "$dir" "H" "J-League Soccer V-Shoot (Japan).mra" "" "" "SPO"
   add "$dir" "H" "Point Blank (World, GN2 Rev B, set 1).mra" "_Point Blank" "" "STG"
   add "$dir" "H" "Super World Stadium '95 (Japan).mra" "" "" "SPO"
   add "$dir" "H" "Super World Stadium '96 (Japan).mra" "" "" "SPO"
   add "$dir" "H" "Super World Stadium '97 (Japan).mra" "" "" "SPO"
   dot
fi
