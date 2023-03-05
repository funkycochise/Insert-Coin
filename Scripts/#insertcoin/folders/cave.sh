 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Cave68K"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
  addgame "Dangun Feveron.mra" "_Dangun Feveron"
  addgame "Fever SOS.mra" "_Dangun Feveron"
  addgame "DoDonPachi (Arrange).mra" "_DoDonPachi"
  addgame "DoDonPachi (Japan).mra" "_DoDonPachi"
  #addgame "DoDonPachi (Japan, No Warn).mra" "_DoDonPachi"
  addgame "DoDonPachi Trainer (Japan).mra" "_DoDonPachi"
  addgame "DoDonPachi.mra" "_DoDonPachi"
  addgame "DonPachi.mra" "_DonPachi"
  addgame "DonPachi (Japan).mra" "_DonPachi"
  addgame "ESP Ra.De..mra" "_ESP Ra.De"
  addgame "ESP Ra.De. (Japan).mra" "_ESP Ra.De"
  addgame "Guwange.mra" "_Guwange"
  addgame "Guwange (Special).mra" "_Guwange"
  addgame "Hotdog Storm.mra" "_Hotdog Storm"

fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
  addgame "Gaia Crusaders.mra" "_Gaia Crusaders"
  addgame "Puzzle Uo Poko.mra" "_Puzzle Uo Poko"
  addgame "Puzzle Uo Poko (Japan).mra" "_Puzzle Uo Poko"
  addgame "Thunder Heroes.mra" "_Thunder Heroes"
fi

exit 0