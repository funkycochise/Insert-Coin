 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Sega-System1"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   addgame "Block Gal [MC-8123B, 317-0029].mra" "_Block Gal"
   addgame "Gardia (317-0006).mra" "_Gardia"
   addgame "Noboranka (bootleg).mra" "_Noboranka"
   addgame "Rafflesia (World, 315-5162).mra" "_Rafflesia"
   addgame "Regulus (World, 315-5033, Rev A.).mra" "_Regulus"
   addgame "Star Jacker (World, No Encryption).mra" "_Star Jacker"
   addgame "SWAT (World, 315-5048).mra" "_SWAT"
   addgame "Toki no Senshi - Chrono Soldier.mra" "_Toki no Senshi"
   addgame "Up'n Down (World, 315-5030).mra" "_Up'n Down"
   addgame "Water Match (World, 315-5064).mra" "_Water Match"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "4-D Warriors (World, 315-5162).mra" "_4D Warriors"
   addgame "Bullfight (World, 315-5065).mra" "_Bullfight"
   addgame "Dakkochan House (MC-8123).mra" "_Dakkochan House"
   addgame "Flicky (World, 315-5051, 128k Vers.).mra" "_Flicky"
   addgame "I'm Sorry.mra" "_I'm sorry"
   addgame "Mister Viking (World, 315-5041).mra" "_Mister Viking"
   addgame "My Hero (US) [No Protection].mra" "_My Hero"
   addgame "Pitfall II (World, 315-5093).mra" "_Pitfall II"
   addgame "Sega Ninja (World, 315-5102).mra" "_Sega Ninja"
   addgame "Spatter (World, 315-5xxx).mra" "_Spatter"
   addgame "TeddyBoy Blues (World, 315-5115, New Ver.).mra" "_TeddyBoy Blues"
   addgame "Wonder Boy (World, 315-5177, Set 1).mra" "_Wonder Boy"
fi
