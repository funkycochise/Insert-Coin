 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

#MainDir="_Pacman"

cd $OutputRoot

#create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Ali Baba and 40 Thieves.mra" "_Pacman"
   addgame "Beastie Feastie (Pac-Man Conversion).mra" "_Pacman"
   addgame "Birdiy.mra" "_Pacman"
   addgame "Crazy Otto.mra" "_Pacman"
   addgame "Crush Roller.mra" "_Pacman"
   addgame "Dream Shopper.mra" "_Pacman"
   addgame "Eeek! (Pac-Man Conversion).mra" "_Pacman"
   addgame "Eggor.mra" "_Pacman"
   addgame "Eyes.mra" "_Pacman"
   addgame "Gorkans.mra" "_Pacman"
   addgame "Jump Shot.mra" "_Pacman"
   addgame "Lizard Wizard.mra" "_Pacman"
   addgame "Mr. TNT.mra" "_Pacman"
   addgame "Ms. Pac-Man.mra" "_Pacman"
   addgame "Pac-Man (Midway).mra" "_Pacman"
   addgame "Pacman Club.mra" "_Pacman"
   addgame "Pacman Plus.mra" "_Pacman"
   addgame "Pac-Manic Miner.mra" "_Pacman"
   addgame "Pollen Angel.mra" "_Pacman"
   addgame "Ponpoko.mra" "_Pacman"
   addgame "Puck Man (Japan set 1).mra" "_Pacman"
   addgame "Super Glob.mra" "_Pacman"
   addgame "The Glob.mra" "_Pacman"
   addgame "Van-Van Car.mra" "_Pacman"
   addgame "Woodpecker.mra" "_Pacman"
fi
#if [ -z "$orientation" ] || [ "$orientation" = "H" ];
#then
#   #special_echo "\$orientation is empty or H"
#fi

exit 0
