#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys2
else
   dir=$namco
fi

resh=$(exist "Final Lap (Rev E).mra")
resv=$(exist "Phelios.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Assault (Rev B).mra" "_Assault" "" ""
   add "$dir" "V" "Cosmo Gang the Video (US).mra" "_Cosmo Gang the Video" "" "PUZ"
   add "$dir" "V" "Dirt Fox (Japan).mra" "_Dirt Fox" "" "RAC"
   add "$dir" "V" "Dragon Saber (World, DO2).mra" "_Dragon Saber" "" "STG"
   add "$dir" "V" "Metal Hawk (Rev C).mra" "_Metal Hawk" "" "STG"
   add "$dir" "V" "Phelios.mra" "_Phelios" "" "STG"
   add "$dir" "V" "Valkyrie no Densetsu (Japan).mra" "_Valkyrie no Densetsu" "" "ACT"

   add "$dir" "H" "Bubble Trouble - Golly! Ghost! 2 (World, Rev B).mra" "_Bubble Trouble - Golly! Ghost! 2" "" "ACT"
   add "$dir" "H" "Burning Force (Japan, new version (Rev C)).mra" "_Burning Force" "" "STG"
   add "$dir" "H" "Final Lap (Rev E).mra" "_Final Lap" "" "RAC"
   add "$dir" "H" "Final Lap 2 (World, Rev B).mra" "_Final Lap 2" "" "RAC"
   add "$dir" "H" "Final Lap 3 (World, Rev C).mra" "_Final Lap 3" "" "RAC"
   add "$dir" "H" "Finest Hour (Japan).mra" "_Finest Hour" "" "ACT"
   add "$dir" "H" "Four Trax (World).mra" "_Four Trax" "" "RAC"
   add "$dir" "H" "Golly! Ghost!.mra" "_Golly! Ghost!" "" "ACT"
   add "$dir" "H" "Kyuukai Douchuuki (Japan, new version (Rev B)).mra" "_Kyuukai Douchuuki" "" "ACT"
   add "$dir" "H" "Lucky & Wild.mra" "_Lucky & Wild" "" "STG"
   add "$dir" "H" "Marvel Land (Japan).mra" "_Marvel Land" "" "ACT"
   add "$dir" "H" "Mirai Ninja (Japan, set 1).mra" "_Mirai Ninja" "" "ACT"
   add "$dir" "H" "Ordyne (World).mra" "_Ordyne" "" "STG"
   add "$dir" "H" "Rolling Thunder 2.mra" "_Rolling Thunder 2" "" "ACT"
   add "$dir" "H" "Steel Gunner (Rev B).mra" "_Steel Gunner" "" ""
   add "$dir" "H" "Steel Gunner 2 (US).mra" "_Steel Gunner 2" "" ""
   add "$dir" "H" "Super World Stadium '92 (Japan).mra" "_Super World Stadium '92" "" "SPO"
   add "$dir" "H" "Super World Stadium '93 (Japan).mra" "_Super World Stadium '93" "" "SPO"
   add "$dir" "H" "Super World Stadium (Japan).mra" "_Super World Stadium" "" "SPO"
   add "$dir" "H" "Suzuka 8 Hours (World, Rev C).mra" "_Suzuka 8 Hours" "" "RAC"
   add "$dir" "H" "Suzuka 8 Hours 2 (World, Rev B).mra" "_Suzuka 8 Hours 2" "" "RAC"
   dot
fi
