 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Sega-Outrun"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   special_echo "\$orientation is empty or V"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "$orientation is empty or H"
   addgame "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"
   addgame "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
   addgame "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"

fi
exit 0