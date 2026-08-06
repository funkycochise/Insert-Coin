#!/bin/bash


BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'     
LIGHTRED='\033[1;31m'          
LIGHTGREEN='\033[1;32m'        
YELLOW='\033[1;33m'       
LIGHTBLUE='\033[1;34m'         
LIGHTPURPLE='\033[1;35m'       
LIGHTCYAN='\033[1;36m'        
WHITE='\033[1;37m'
NC='\033[0m' # No Color

if [ "$TERM" == "xterm" ]; then
   CHECK="✓"
   TAB=""
else
   CHECK="•"
   #CHECK="»"
   TAB="  "
fi

#clear

SD=/media/fat
des_games=$SD/games/mame

function dl {
   FILE="$des_games/$1"
   #echo "$FILE"
   if [ -f $FILE ]; then
      echo "$des_games/$1 exists"  > /dev/null 2>&1
   else
      #echo "$des_games/$1 do not exists"
      echo -n "downloading $1"
      wget -q -c -P /media/fat/Scripts/temp https://archive.org/download/insert_coin_mame/$1
         if [ -f /media/fat/Scripts/temp/$1 ]; then
            touch /media/fat/Scripts/temp/$1
            mv /media/fat/Scripts/temp/$1 "$des_games/$1"
            echo -e "\r${BLUE}${CHECK}${NC} $1                    "
         else
            echo -e ": Error when downloading $1                  "
      	 fi
   fi
}

echo "Updating mame folder $des_games"


dl "mushisam.zip"
dl "espgal2.zip"
dl "mushitam.zip"
dl "futari15.zip"
dl "futaribl.zip"
dl "ibara.zip"
dl "ibarablk.zip"
dl "deathsml.zip"
dl "mmpork.zip"
dl "pinkswts.zip"
dl "ddpdfk.zip"
dl "dsmbl.zip"
dl "dfkbl.zip"
dl "akatana.zip"
dl "ddpsdoj.zip"
dl "ddpsdoj.zip"





echo -e "${GREEN}${CHECK}${NC} Completed"
