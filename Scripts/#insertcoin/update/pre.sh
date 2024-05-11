#!/bin/bash

if [ ! -f "/media/fat/Scripts/#insertcoin/setup.ini" ] 
then
  echo "setup unavailable: getting default"
  echo "Getting default Insert-Coin setup.ini : /media/fat/Scripts/#insertcoin/setup.ini"
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/setup.ini /media/fat/Scripts/#insertcoin --quiet
fi


