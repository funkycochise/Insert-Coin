#!/bin/bash

TEMP=/media/fat/scripts/temp
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs
ARCHIVE=https://archive.org/download/gw_mister/

function identify_folder {


des_games=$SD/games
des="$des_games/Game And Watch"
if ! [ -d "$des_games" ]; then
   mkdir $des_games
fi
if ! [ -d "$des" ]; then
   mkdir $des
fi
if [ ! -d "$TEMP" ] 
then
   mkdir $TEMP
fi 
}

function dl {

   #echo "dl $1"
   
   FILE=$des/$1
   #echo "retrieve $FILE"
   if ! test -f "$FILE"; then
      echo -n "downloading $1"
      wget -q -c -P $TEMP "$ARCHIVE/$1"
      mv "$TEMP/$1" "$FILE" 
      echo -e "\r${BLUE}${CHECK}${NC} $1                                            "    
  fi

}

echo -e "Updating game&watch folder $target"
identify_folder

if [ ! -d "$TEMP" ]; 
then
   mkdir "$TEMP"
fi

dl "Altered Beast (Tiger).gnw"
dl "Apollo 13 (Tiger).gnw"
dl "Ball.gnw"
dl "Chef.gnw"
dl "Crab Grab.gnw"
dl "Donkey Kong II.gnw"
dl "Donkey Kong Jr. (New Wide Screen).gnw"
dl "Donkey Kong.gnw"
dl "Egg.gnw"
dl "Fire (Silver).gnw"
dl "Fire (Wide Screen).gnw"
dl "Fire Attack.gnw"
dl "Flagman.gnw"
dl "Green House.gnw"
dl "Helmet (version CN-17).gnw"
dl "Judge (purple version).gnw"
dl "Life Boat.gnw"
dl "Lion.gnw"
dl "Manhole (Gold).gnw"
dl "Manhole (New Wide Screen).gnw"
dl "Mario Bros..gnw"
dl "Mario's Cement Factory (New Wide Screen).gnw"
dl "Mickey & Donald.gnw"
dl "Mickey Mouse (Wide Screen).gnw"
dl "Octopus.gnw"
dl "Oil Panic.gnw"
dl "Parachute.gnw"
dl "Popeye (Wide Screen).gnw"
dl "Rain Shower.gnw"
dl "Snoopy Tennis.gnw"
dl "Spitball Sparky.gnw"
dl "Squish.gnw"
dl "The Addams Family (Tiger).gnw"
dl "Top Gun (handheld).gnw"
dl "Tropical Fish.gnw"
dl "Turtle Bridge.gnw"
dl "Vermin.gnw"


echo -e "${GREEN}${CHECK}${NC} Completed"




