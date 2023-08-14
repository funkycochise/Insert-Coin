 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Bally-Midway"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   special_echo "\$orientation is empty or V"
   addgame "Discs of Tron.mra" "_Disc of Tron"
   addgame "Gorf (Program 1).mra" "_Gorf"
   addgame "Gorf (Speech).mra" "_Gorf"
   addgame "Gorf.mra" "_Gorf"
   addgame "Journey.mra" "_Journey"
   addgame "Kick.mra" "_Kick"
   addgame "Kick-Man.mra" "_Kick-Man"
   addgame "Ms. Pac-Man.mra" "_Ms.Pacman"
   addgame "Pac-Man (Midway).mra" "_Pacman"
   addgame "Pac-Man Plus.mra" "_Pacman Plus"
   addgame "Satan's Hollow (Set 1).mra" "_Satan's Hollow"
   addgame "Space Invaders.mra" "_Space Invaders"
   addgame "Tron.mra" "_Tron" 
   addgame "Two Tigers (Tron Conversion).mra" "_Two Tigers"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   special_echo "\$orientation is empty or H"
   addgame "Bosconian - Star Destroyer (Midway, new version).mra" "_Bosconian"
   addgame "Crater Raider.mra" "_Crater Raider"
   addgame "Demolition Derby (MCR-3 Mono Board Version).mra" "_Demolition Derby"
   addgame "Domino Man.mra" "_Domino Man"
   addgame "Extra Bases.mra" "_Extra Bases"
   addgame "Kozmik Krooz'r.mra" "_Kozmik Kroozr"
   addgame "Max RPM (v2).mra" "_Max RPM"
   addgame "Power Drive.mra" "_Power Drive"
   addgame "Rampage (Rev 3, 860827).mra" "_Rampage"
   addgame "Sarge.mra" "_Sarge"
   addgame "Sea Wolf (Set 1).mra" "_Sea Wolf"
   addgame "Sea Wolf II.mra" "_Sea Wolf II"
   addgame "Solar Fox.mra" "_Solar Fox"
   addgame "Space Zap.mra" "_Space Zap"
   addgame "Spy Hunter.mra" "_Spy Hunter"
   addgame "Star Guards.mra" "_Star Guards"
   addgame "Tapper (Budweiser, 840127).mra" "_Tapper"
   addgame "The Adventures of Robby Roto!.mra" "_Robby Roto"
   addgame "Timber.mra" "_Timber"
   addgame "Turbo Tag (Prototype).mra" "_Turbo Tag"
   addgame "Wacko.mra" "_Wacko"
   addgame "Wizard of Wor (Speech).mra" "_Wizard of Wor"
   addgame "Wizard of Wor.mra" "_Wizard of Wor"

fi

exit 0