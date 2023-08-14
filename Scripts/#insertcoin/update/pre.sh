#!/bin/bash

if [ ! -f "/media/fat/Scripts/#insertcoin/setup.ini" ] 
then
  echo "setup unavailable: getting default"
  echo "Getting default Insert-Coin setup.ini : /media/fat/Scripts/#insertcoin/setup.ini"
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/setup.ini /media/fat/Scripts/#insertcoin --quiet
fi
#Zaxxon
if [ -d "$ALT/_Zaxxon" ] 
then
   rm -r "$ALT/_Zaxxon"
fi
#Future Spy
if [ -d "$ALT/_Future Spy" ] 
then
   rm -r "$ALT/_Future Spy"
fi

cd /media/fat/_Arcade/cores
#find . -maxdepth 1 -type f -name "SEGASYS1_*" ! -name "SEGASYS1_20210901.rbf*" -delete

if [ -f "/media/fat/games/Saturn/boot.rom" ]
then
  mv /media/fat/games/Saturn/boot.rom /media/fat/games/Saturn/boot.bin
fi
