#!/bin/bash

function dl {
name=$1
file=$2

if [ ! -f "$file" ]; then
  echo "Getting latest default Insert-Coin $name"
  curl "https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/$name" --insecure -o "$2" 
fi
}

dl "setup.ini" "/media/fat/Scripts/#insertcoin/setup.ini"

#clear
cd /media/fat/Scripts/#insertcoin
python names.py
RET=$?

if [ $RET -eq 0 ]; then
    #echo "Run choisi"
    ./run.sh | tee output.log
#elif [ $RET -eq 1 ]; then
#    #echo "ESC ou Exit choisi"
#    # Action en cas d'interruption
#else
#    echo "Autre code retour : $RET"
fi

#echo "code retour : $RET"