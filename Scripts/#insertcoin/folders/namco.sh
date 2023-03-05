 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Namco"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   addgame "Dig Dug (Rev 2).mra" "_Dig Dug"
   addgame "Dig Dug II (New Ver).mra" "_Dig Dug II"
   addgame "Galaga (Midway, Set 1).mra" "_Galaga"
   addgame "Galaga 3 (GP3 Rev D).mra" "_Gaplus"
   addgame "Galaga.mra" "_Galaga"
   addgame "Galaxian (Namco, Set 1).mra" "_Galaxian"
   addgame "Gaplus (GP2 Rev B).mra" "_Gaplus"
   addgame "Gatsbee.mra" "_Galaga"
   addgame "Grobda (W, New Ver.).mra" "_Grobda"
   addgame "King And Balloon.mra" "_King And Balloon"
   addgame "Mappy (US).mra" "_Mappy"
   addgame "Motos.mra" "_Motos"
   addgame "Ms. Pac-Man.mra" "_Ms.Pacman"
   addgame "New Rally-X.mra" "_RallyX"
   addgame "Pac & Pal.mra" "_Pac & Pal"
   addgame "Pac-Man & Chomp Chomp.mra" "_Pac & Pal"
   addgame "Puck Man (JP, Set 1).mra" "_Pacman"
   addgame "Rally-X (32k Ver).mra" "_RallyX"
   addgame "Super Pac-Man.mra" "_Super Pacman"
   addgame "Super Xevious.mra" "_Xevious"
   addgame "TankBattalion.mra" "_TankBattalion"
   addgame "The Tower of Druaga.mra" "_The Tower of Druaga"
   addgame "Xevious.mra" "_Xevious"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   addgame "Bosconian - Star Destroyer (new version).mra" "_Bosconian"
fi
exit 0