#!/bin/bash

echo "Getting latest console cores"

CONSOLE=/media/fat/_Console/

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

dualsdram=$1
wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/PSX.zip --quiet
unzip -qq PSX.zip
rm -r PSX.zip
files=( "$path"/*.rbf )

for f in $(ls ./*.rbf)
#for f in $files
do
  #echo "$f"
  #echo "${f:2:4}"
  if [ "$dualsdram" == "1" ]; then
    if [ "${f:2:4}" == "Dual" ]; then
      #echo "Dual sdram"
      target=${f:7:${#f}}
      #echo "source: $f"
      #echo "target: $target"
      mv $f $CONSOLE/$target
      touch $CONSOLE/PSX*.rbf >/dev/null
      echo "PSX"
    fi
  else
    if [ ! "${f:2:4}" == "Dual" ]; then
      #echo "Single sdram"
      target=${f:2:${#f}}
      #echo "source: $f"
      #echo "target: $target"
      mv $f $CONSOLE/$target
      touch $CONSOLE/PSX*.rbf >/dev/null
      echo "PSX"
    fi
  fi
  #clean any file left
  if test -f "./$f"; then
    rm -r ./$f
  fi
done
}

function s32x {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/S32X.zip --quiet
  if test -f "./S32X.zip"; then
    unzip S32X.zip >/dev/null 
    rm -r ./S32X.zip >/dev/null
    rm -r $CONSOLE/S32X*.rbf >/dev/null
    mv ./S32X*.rbf $CONSOLE
    touch $CONSOLE/S32X*.rbf >/dev/null
    echo "S32X"
  fi
}

function sgb {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/SGB.zip --quiet
  if test -f "./SGB.zip"; then
    unzip SGB.zip >/dev/null 
    rm -r ./SGB.zip >/dev/null
    rm -r $CONSOLE/SGB*.rbf >/dev/null
    mv ./SGB*.rbf $CONSOLE
    touch $CONSOLE/SGB*.rbf >/dev/null
    echo "SGB"
  fi
}


function Saturn {
  dualsdram=$1
  
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/Saturn.zip --quiet
  unzip -qq Saturn.zip
  rm -r Saturn.zip
  files=( "$path"/*.rbf )
  #echo "${#files[@]}"
  #for f in $files
  #do
  #  echo "${f}"
  #done

  for f in $(ls ./*.rbf)
  #for f in $files
  do
    #echo "$f"
    #echo "${f:2:4}"
    if [ "$dualsdram" == "1" ]; then
      if [ "${f:2:4}" == "Dual" ]; then
        #echo "Dual sdram"
        target=${f:7:${#f}}
        #echo "source: $f"
        #echo "target: $target"
        mv $f $CONSOLE/$target
        touch $CONSOLE/Saturn*.rbf >/dev/null
        echo "Saturn"
      fi
    else
      if [ ! "${f:2:4}" == "Dual" ]; then
        #echo "Single sdram"
        target=${f:2:${#f}}
        #echo "source: $f"
        #echo "target: $target"
        mv $f $CONSOLE/$target
        touch $CONSOLE/Saturn*.rbf >/dev/null
        echo "Saturn"
      fi
    fi

    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

function neogeo {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/NeoGeo.zip --quiet
  if test -f "./NeoGeo.zip"; then
    unzip NeoGeo.zip >/dev/null 
    rm -r ./NeoGeo.zip >/dev/null
    rm -r $CONSOLE/NeoGeo*.rbf >/dev/null
    mv ./NeoGeo*.rbf $CONSOLE
    touch $CONSOLE/NeoGeo*.rbf >/dev/null
    echo "NeoGeo"
  fi
}

if [ "$psx" == "1" ]; then
  PSX "$dualsdram"
fi
if [ "$s32x" == "1" ]; then
  s32x
fi
if [ "$sgb" == "1" ]; then
  sgb
fi
if [ "$saturn" == "1" ]; then
  Saturn "$dualsdram"
fi
if [ "$neogeo" == "1" ]; then
  neogeo
fi


echo "Completed"
echo ""