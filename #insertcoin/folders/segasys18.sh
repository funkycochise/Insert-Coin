#!/bin/bash  
source ./folders/functions.sh

loadsetup

if [ -f "$names" ]; then
   source <(grep segasys18 $names)
else
   segasys18="_Sega-System-18"
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$segasys16
else
   dir=$sega
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$segasys18
else
   dir=$sega
fi

resh=$(exist "Shadow Dancer (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Desert Breaker (World) (FD1094 317-0196).mra" "_Desert Breaker" "" "STG"
   add "$dir" "H" "Alien Storm (World, 2 Players) (FD1094 317-0154).mra" "_Alien Storm" "" "BEA"
   add "$dir" "H" "Bloxeed (Japan) (FD1094 317-0139).mra" "_Bloxeed" "" "PUZ"
   add "$dir" "H" "Clockwork Aquario (prototype).mra" "_Clockwork Aquario" "" "ACT"
   add "$dir" "H" "Clutch Hitter (US) (FD1094 317-0176).mra" "_Clutch Hitter" "" "SPO"
   #add "$dir" "H" "D. D. Crew (World, 3 Players) (FD1094 317-0190).mra" "_D. D. Crew" "" "BEA"
   add "$dir" "H" "Hammer Away (Japan, prototype).mra" "_Hammer Away" "" "STG"
   add "$dir" "H" "Laser Ghost (World) (FD1094 317-0166).mra" "_Laser Ghost"
   add "$dir" "H" "Michael Jackson's Moonwalker (World) (FD1094-8751 317-0159).mra" "_Michael Jackson's Moonwalker" "" "ACT"
   #add "$dir" "H" "Pontoon (FD1094 317-0153).mra" "_Pontoon"
   add "$dir" "H" "Shadow Dancer (World).mra" "_Shadow Dancer" "" "ACT"
   add "$dir" "H" "Wally wo Sagase! (rev B, Japan, 2 players) (FD1094 317-0197B).mra" "_Wally wo Sagase!" "" "PUZ"
   dot
fi
