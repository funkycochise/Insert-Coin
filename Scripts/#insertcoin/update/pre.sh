#!/bin/bash

neededversion="B"
dl="0"

#get setup settings
ini=/media/fat/Scripts/#insertcoin/setup.ini

if [ -f "$ini" ] 
then
   source <(grep version $ini)
   version=${version:0:1}

   if [ ! "$version" == "$neededversion" ]; then
      dl="1"
      rm -r /media/fat/Scripts/#insertcoin/setup.ini
   fi
else 
   dl="1"
fi

if [ "$dl" == "1" ]; then
#then
  echo "Getting latest default Insert-Coin setup.ini : $ini"
  curl "https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/setup.ini" --insecure -o "/media/fat/Scripts/#insertcoin/setup.ini" 
  #wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/setup.ini /media/fat/Scripts/#insertcoin/setup.ini
fi


