#!/bin/bash

#clear
cd /media/fat/Scripts/#insertcoin
python setup.py
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