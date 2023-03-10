 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Sega"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Future Spy (315-5061).mra" "_Future Spy"
   addgame "Pengo (Set 1, Rev C).mra" "_Pengo"
   addgame "Super Zaxxon (315-5013).mra" "_Super Zaxxon"
   addgame "Zaxxon (Set 1, Rev D).mra" "_Zaxxon"
   addgame "Congo Bongo.mra" "_Congo Bongo"
fi
#if [ -z "$orientation" ] || [ "$orientation" = "H" ];
#then
#   #special_echo "\$orientation is empty or H"
   addgame "BankPanic.mra" "_BankPanic"
#fi

exit 0
