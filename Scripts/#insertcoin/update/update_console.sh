#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

loadsetup

function PSX {
  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/PSX.zip -O -k -s --output /media/fat/Scripts/temp/PSX.zip
  #wget /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/PSX.zip --quiet
  unzip -qq /media/fat/Scripts/temp/PSX.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/PSX.zip
  rm -r /media/fat/_Console/PSX*
  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    if [ "$dualsdram" == "0" ]; then
      if [ ! "${f:2:4}" == "Dual" ]; then
        target="${f:2:${#f}}"
        #echo "target: $target"
        #ls /media/fat/Scripts/temp/$target
        mv /media/fat/Scripts/temp/$target /media/fat/_Console/$target
        touch /media/fat/_Console/$target >/dev/null
        installed="1"
      fi
    elif [ "$dualsdram" == "1" ]; then
      if [ "${f:2:4}" == "Dual" ]; then
        target="PSX_Dual${f:10:${#f}}"
        #echo "target: $target"
        mv $f /media/fat/Scripts/temp/$target
        #ls /media/fat/Scripts/temp/$target
        mv /media/fat/Scripts/temp/$target /media/fat/_Console/$target
        touch /media/fat/_Console/$target >/dev/null
        installed="1"
      fi
    elif [ "$dualsdram" == "2" ]; then
      #echo "Both core for SDRAM"
      #echo "source: $f"
      if [ "${f:2:4}" == "Dual" ]; then
        target="PSX_Dual${f:10:${#f}}"
        #echo "target: $target"
        mv $f /media/fat/Scripts/temp/$target
        #ls /media/fat/Scripts/temp/$target
        mv /media/fat/Scripts/temp/$target /media/fat/_Console/$target
        touch /media/fat/_Console/$target >/dev/null
        installed="1"
      else
        target="${f:2:${#f}}"
        #echo "target: $target"
        #ls /media/fat/Scripts/temp/$target
        mv /media/fat/Scripts/temp/$target /media/fat/_Console/$target
        touch /media/fat/_Console/$target >/dev/null
        installed="1"
      fi
    fi

    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
  if [ "$installed" == "1" ]; then
     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
     echo -e "${BLUE}${CHECK}${NC} PSX"
  fi
}

function Saturn {
  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/Saturn.zip -O -k -s --output /media/fat/Scripts/temp/Saturn.zip
  #wget /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/Saturn.zip --quiet
  unzip -qq /media/fat/Scripts/temp/Saturn.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/Saturn.zip
  rm -r /media/fat/_Console/Saturn*
  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    if [ "$dualsdram" == "0" ]; then
      if [ ! "${f:2:4}" == "Dual" ]; then
        target="${f:2:${#f}}"
        #echo "target: $target"
        target=$f
        mv $f $CONSOLE/$target
        touch $CONSOLE/$target >/dev/null
        installed="1"
      fi
    elif [ "$dualsdram" == "1" ]; then
      if [ "${f:2:4}" == "Dual" ]; then
        #echo "Dual sdram"
        target="Saturn_Dual${f:13:${#f}}"
        #echo "target: $target"
        mv $f $CONSOLE/$target
        touch $CONSOLE/$target >/dev/null
        installed="1"
      fi

    elif [ "$dualsdram" == "2" ]; then
      #echo "Both core for SDRAM"
      #echo "source: $f"
      if [ "${f:2:4}" == "Dual" ]; then
        target="Saturn_Dual${f:13:${#f}}"
        #echo "target: $target"
        mv $f $CONSOLE/$target
        touch $CONSOLE/$target >/dev/null
        installed="1"
      else
        target="${f:2:${#f}}"
        #echo "target: $target"
        target=$f
        mv $f $CONSOLE/$target
        touch $CONSOLE/$target >/dev/null
        installed="1"
      fi
    fi
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
  if [ "$installed" == "1" ]; then
     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
     echo -e "${BLUE}${CHECK}${NC} Saturn"
  fi
}

function S32X {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/S32X.zip --quiet
  unzip -qq S32X.zip
  rm -r S32X.zip

  for f in $(ls ./*.rbf)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    mv $f $CONSOLE/$target --force
    touch $CONSOLE/$target >/dev/null
    #remove keep only latest
    find $CONSOLE -maxdepth 1 -type f -name "S32X*" ! -name "$target" -delete
    if [ "$TERM" == "linux" ]; then
       #GUI
       echo -n -e "   "
    fi
    echo -e "${BLUE}${CHECK}${NC} S32X"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

function SGB {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/SGB.zip --quiet
  unzip -qq SGB.zip
  rm -r SGB.zip

  for f in $(ls ./*.rbf)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    mv $f $CONSOLE/$target --force
    touch $CONSOLE/$target >/dev/null
    #remove keep only latest
    find $CONSOLE -maxdepth 1 -type f -name "SGB*" ! -name "$target" -delete
    if [ "$TERM" == "linux" ]; then
       #GUI
       echo -n -e "   "
    fi
    echo -e "${BLUE}${CHECK}${NC} SGB"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

function NeoGeo {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/NeoGeo.zip --quiet
  unzip -qq NeoGeo.zip
  rm -r NeoGeo.zip

  for f in $(ls ./*.rbf)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    mv $f $CONSOLE/$target --force
    touch $CONSOLE/$target >/dev/null
    #remove keep only latest
    find $CONSOLE -maxdepth 1 -type f -name "NeoGeo*" ! -name "$target" -delete
    if [ "$TERM" == "linux" ]; then
       #GUI
       echo -n -e "   "
    fi
    echo -e "${BLUE}${CHECK}${NC} Neogeo"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

function N64 {
  GAMES=/media/fat/games/N64
  CONSOLE=/media/fat/_Console
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/N64.zip --quiet
  unzip -qq N64.zip
  rm -r N64.zip
  wget https://raw.githubusercontent.com/MiSTer-devel/N64_ROM_Database/main/N64-database.txt --quiet

  for f in $(ls ./*.*)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    if [ "$target" == "boot.rom" ]; then
      #echo "boot.rom"
      if [ ! -d "$GAMES" ] 
      then
        mkdir $GAMES
      fi
      if [ ! -f "$GAMES/$target" ] 
      then
        cp $f $GAMES/$target
      fi
      rm -r ./$f
    elif [ "$target" == "boot1.rom" ]; then
      #echo "boot.rom"
      if [ ! -d "$GAMES" ] 
      then
        mkdir $GAMES
      fi
      if [ ! -f "$GAMES/$target" ] 
      then
        cp $f $GAMES/$target
      fi
      rm -r ./$f    
    elif [ "$target" == "N64-database.txt" ]; then
      #echo "N64-database.txt"
      #ls $f
      if [ -f "$GAMES/N64-database.txt" ] 
      then
        rm -r  $GAMES/N64-database.txt
      fi
      cp $f $GAMES/N64-database.txt
      touch $GAMES/N64-database.txt
      #if [ ! -f "$GAMES/$target" ] 
      #then
      #  cp $f $GAMES/$target
      #fi
      rm -r ./$f
    elif [ "${target:0:3}" == "N64" ]; then
      #echo "N64: $target"
      mv $f $CONSOLE/$target
      touch $CONSOLE/$target
      if [ -f "/media/fat/_Console/N64_20240322.rbf" ] 
      then
        if [ -f "/media/fat/_Console/N64_20240323.rbf" ] 
        then
          mv "/media/fat/_Console/N64_20240323.rbf" "/media/fat/_Console/N64_Turbo_20240323.rbf"
        fi
      fi
      #find $CONSOLE -maxdepth 1 -type f -name "N64*" ! -name "$target" -delete
    fi
   
    #mv $f $CONSOLE/$target --force
    #touch $CONSOLE/$target >/dev/null
    #remove keep only latest

    #find $CONSOLE -maxdepth 1 -type f -name "NeoGeo*" ! -name "$target" -delete
    #echo "N64"
    #clean any file left
    #if test -f "./$f"; then
    #  rm -r ./$f
    #fi
  done
  if [ "$TERM" == "linux" ]; then
     #GUI
     echo -n -e "   "
  fi
  echo -e "${BLUE}${CHECK}${NC} N64"
}

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "Getting latest console cores"

if [ "$psx" == "1" ]; then
  PSX
fi
if [ "$s32x" == "1" ]; then
  S32X
fi
if [ "$sgb" == "1" ]; then
  SGB
fi
if [ "$saturn" == "1" ]; then
  Saturn
fi
if [ "$neogeo" == "1" ]; then
  NeoGeo
fi
#as N64 is now official, I suspend its update through insert coin
if [ "$n64" == "1" ]; then
  N64
fi

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${GREEN}${CHECK}${NC} Completed"