 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Kiwako"
RegSourceRoot=/media/fat/_Arcade

cd $OutputRoot

create "$MainDir"

orientation=$2

#if [ -z "$orientation" ] || [ "$orientation" = "V" ];
#then
#fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   addgame "MrJong.mra" "_CrazyBlocks"
   addgame "BlockBuster.mra" "_CrazyBlocks"
   addgame "CrazyBlocks.mra" "_CrazyBlocks"
fi

exit 0
