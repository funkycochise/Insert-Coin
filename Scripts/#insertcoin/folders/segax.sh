#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segaxboard
else
   dir=$sega
fi
#echo "$dir"
resh=$(exist "A.B. Cop (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "A.B. Cop (World).mra" "_A.B. Cop" "" "ACT"
   add "$dir" "H" "After Burner (Ver 1.32).mra" "_After Burner" "" ""
   add "$dir" "H" "After Burner II.mra" "_After Burner II" "" ""
   add "$dir" "H" "GP Rider (World).mra" "_GP Rider" "" ""
   add "$dir" "V" "Last Survivor.mra" "_Last Survivor" "" ""
   add "$dir" "V" "Line of Fire (World).mra" "_Line of Fire" "" ""
   add "$dir" "V" "Racing Hero.mra" "_Racing Hero" "" ""
   add "$dir" "V" "Super Monaco GP (World, Rev B).mra" "_Super Monaco GP" "" "RAC"
   add "$dir" "V" "Thunder Blade (upright).mra" "_Thunder Blade" "" ""
   dot
fi
