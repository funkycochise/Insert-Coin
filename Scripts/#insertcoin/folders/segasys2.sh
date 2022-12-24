 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Sega-System2"

cd $OutputRoot

create "$MainDir"

createreplacefolder "_Brain"
createreplacefolder "_Heavy Metal"
#createreplacefolder "_Toki no Senshi"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Toki no Senshi - Chrono Soldier (MC-8123, 317-0040).mra" "_Toki no Senshi"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Brain.mra" "_Brain"
   addgame "Choplifter (unprotected).mra" "_Choplifter"
   addgame "Heavy Metal (315-5135).mra" "_Heavy Metal"
   addgame "UFO Senshi Youko Chan [MC-8123, 317-0064].mra" "_UFO Senshi Youko Chan"
   addgame "Wonder Boy (System 2, Set 1, Japan) [315-5177].mra" "_Wonder Boy"
   addgame "Wonder Boy in Monster Land (Japan New Ver., MC-8123, 317-0043).mra" "_Wonder Boy in Monster Land"
fi
exit 0
