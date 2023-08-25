#!/bin/bash

echo "Getting latest console cores"

CONSOLE=/media/fat/_Console

dualsdram=$1
psx=$2
s32x=$3
saturn=$4
sgb=$5
neogeo=$6

#echo "psx: $psx"
#echo "s32x: $s32x"
#echo "saturn: $saturn"
#echo "sgb: $sgb"
#echo "neogeo: $neogeo"

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
    echo "PSX"
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
    echo "Saturn"
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
    echo "S32X"
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
    echo "SGB"
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
    echo "NeoGeo"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

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

echo "Completed"
echo ""