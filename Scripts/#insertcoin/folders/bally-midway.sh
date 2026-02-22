#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep bally_midway $names)
else
   bally_midway="_Bally-midway"
fi
dir=$bally_midway

resh=$(exist "Bosconian - Star Destroyer (new version).mra")
resv=$(exist "Galaxian (Namco, Set 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add_rep "$dir" "V" "_Gaplus"  "" "" "STG"
   add_rep "$dir" "V" "_Pac-Man" "" "" "STG"
   add "$dir" "V" "Galaxian (Namco, Set 1).mra" "_Galaxian" "" "STG"

   add "$dir" "V" "Blue Print (Midway).mra" "_Blue Print" "" ""
   add "$dir" "V" "Gorf.mra" "_Gorf" "" "STG"
   add "$dir" "V" "Journey.mra" "_Journey"
   add "$dir" "V" "Kick.mra" "_Kick"
   add "$dir" "V" "Kick-Man.mra" "_Kick-Man"
   add "$dir" "V" "Ms. Pac-Man.mra" "_Ms.Pacman" "" "ACT"
   add "$dir" "V" "Pac-Man Plus.mra" "_Pacman Plus" "" "ACT"
   add "$dir" "V" "Satan's Hollow (Set 1).mra" "_Satan's Hollow" "" "ACT"
   add "$dir" "V" "Sea Wolf (Set 1).mra" "_Sea Wolf"
   add "$dir" "V" "Solar Fox.mra" "_Solar Fox"
   add "$dir" "V" "Space Invaders.mra" "_Space Invaders"
   add "$dir" "V" "Spy Hunter.mra" "_Spy Hunter"
   add "$dir" "V" "Tron.mra" "_Tron" 
   add "$dir" "V" "Turbo Tag (Prototype).mra" "_Turbo Tag"
   add "$dir" "V" "Galaga (Midway, Set 1).mra" "_Galaga" "" "STG"

   add "$dir" "H" "Bosconian - Star Destroyer (new version).mra" "_Bosconian" "" "STG"
   add "$dir" "H" "Crater Raider.mra" "_Crater Raider"
   add "$dir" "H" "Demolition Derby (MCR-3 Mono Board Version).mra" "_Demolition Derby"
   add "$dir" "H" "Discs of Tron.mra" "_Disc of Tron"
   add "$dir" "H" "Domino Man.mra" "_Domino Man"
   add "$dir" "H" "Extra Bases.mra" "_Extra Bases"

   add "$dir" "H" "Kozmik Krooz'r.mra" "_Kozmik Kroozr"
   add "$dir" "H" "Max RPM (v2).mra" "_Max RPM"
   add "$dir" "H" "Power Drive.mra" "_Power Drive"
   add "$dir" "H" "Rampage (Rev 3, 860827).mra" "_Rampage"
   add "$dir" "H" "Sarge.mra" "_Sarge"
   add "$dir" "H" "Sea Wolf II.mra" "_Sea Wolf II"

   add "$dir" "H" "Space Zap.mra" "_Space Zap"
   add "$dir" "H" "Star Guards.mra" "_Star Guards"
   add "$dir" "H" "Tapper (Budweiser, 840127).mra" "_Tapper" "" "ACT"
   add "$dir" "H" "The Adventures of Robby Roto!.mra" "_Robby Roto"
   add "$dir" "H" "Timber.mra" "_Timber"

   add "$dir" "H" "Two Tigers (Tron Conversion).mra" "_Two Tigers"
   add "$dir" "H" "Wacko.mra" "_Wacko"
   add "$dir" "H" "Wizard of Wor.mra" "_Wizard of Wor"

   dot
fi