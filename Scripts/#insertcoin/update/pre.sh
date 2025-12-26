#!/bin/bash

function dl {
name=$1
file=$2
neededversion=$3
dl="0"

#echo "name $name"
#echo "file $file"
#echo "neededversion $neededversion"

if [ -f "$file" ] 
then
   source <(grep version $file)
   version=${version:0:1}

   if [ ! "$version" == "$neededversion" ]; then
      dl="1"
      rm -r "$file"
   fi
else 
   dl="1"
fi
if [ "$dl" == "1" ]; then
  echo "Getting latest default Insert-Coin $name"
  curl "https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/$name" --insecure -o "$2" 
fi



}

dl "setup.ini" "/media/fat/Scripts/#insertcoin/setup.ini" "G"
dl "names.ini" "/media/fat/Scripts/#insertcoin/names.ini" "E"
