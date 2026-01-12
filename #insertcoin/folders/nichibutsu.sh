#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep nichibutsu $names)
else
   nichibutsu="_Nihon Bussan-Nichibutsu"
fi
dir=$nichibutsu

resh=$(exist "Kozure Ookami (Japan).mra")
resv=$(exist "Terra Cresta (YM3526 set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Armed F (Japan).mra" "_Formation Armed F" "" "STG"
   add "$dir" "V"  "Cosmo Police Galivan (12-26-1985).mra" "_Galivan" "" "ACT"
   add "$dir" "V"  "Kid no Hore Hore Daisakusen.mra" "_Booby Kids" "" "ACT"
   add "$dir" "V"  "Legion - Spinner-87 (World ver 2.03).mra" "_Legion - Spinner-87" "" "STG"
   add "$dir" "V"  "Moon Cresta (Galaxian Hardware) [bl].mra" "_Moon Cresta" "" "STG"
   add "$dir" "V"  "Moon Quasar.mra" "_Moon Quasar" "" "STG"
   add "$dir" "V"  "Sei Senshi Amatelass.mra" "_Soldier Girl Amazon" "" "RNG"
   add "$dir" "V"  "Terra Cresta (YM3526 set 1).mra" "_Terra Cresta" "" "STG"
   add "$dir" "V"  "Terra Force (Japan).mra" "_Terra Force" "" "STG"
   add "$dir" "V"  "Ufo Robo Dangar (4-07-1987).mra" "_Ufo Robo Dangar" "" "STG"

   add "$dir" "H"  "Crazy Climber.mra" "_Crazy Climber" "" "ACT"
   add "$dir" "H"  "Crazy Climber 2 (Japan).mra" "_Crazy Climber 2" "" "ACT"
   add "$dir" "H"  "Kozure Ookami (Japan).mra" "_Kozure Ookami" "" "BEA"
   add "$dir" "H"  "Tatakae! Big Fighter (Japan).mra" "_Sky Robo" "" "STG"
   dot
fi
