 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Data East-Deco"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Bump 'n' Jump.mra" "_Burning Rubber"
   addgame "Burger Time (Set 1).mra" "_Burger Time"
   addgame "Burger Time.mra" "_Burger Time"
   addgame "Burnin' Rubber.mra" "_Burning Rubber"
   addgame "Heavy Barrel (World).mra" "_Heavy Barrel"
   addgame "Karate Champ (US).mra" "_Karate Champ"
   addgame "Wonder Planet (Japan).mra" "_Wonder Planet"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Bad Dudes vs. Dragonninja (US revision 1).mra" "_Bad Dudes vs. Dragonninja"
   addgame "Boulder Dash - Boulder Dash Part 2 (World).mra" "_Boulder Dash"
   addgame "Chelnov - Atomic Runner (World).mra" "_Chelnov"
   addgame "Hippodrome (US).mra" "_Hippodrome"
   addgame "Karnov (Japan).mra" "_Karnov"   
   addgame "Karnov (US, rev 5).mra" "_Karnov"
   addgame "Karnov (US, rev 6).mra" "_Karnov"
   addgame "Midnight Resistance (World).mra" "_Midnight Resistance"
   addgame "Robocop (World revision 4).mra" "_Robocop"
   addgame "Secret Agent (World revision 3).mra" "_Secret Agent"
   addgame "Express Raider.mra" "_Express Raider"
   addgame "Western Express (Japan, rev 4).mra" "_Express Raider"
fi


exit 0
