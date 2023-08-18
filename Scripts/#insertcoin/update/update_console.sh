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
  #echo "${#files[@]}"
  #for f in $files
  #do
  #  echo "${f}"
  #done

  for f in $(ls ./*.rbf)
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
	#remove keep only latest
        find $CONSOLE -maxdepth 1 -type f -name "PSX*" ! -name "$target" -delete 
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
	#remove keep only latest
        find $CONSOLE -maxdepth 1 -type f -name "PSX*" ! -name "$target" -delete
        echo "PSX"
      fi
    fi
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
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
	#remove keep only latest
        find $CONSOLE -maxdepth 1 -type f -name "Saturn*" ! -name "$target" -delete 
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
	#remove keep only latest
        find $CONSOLE -maxdepth 1 -type f -name "Saturn*" ! -name "$target" -delete 
        echo "Saturn"
      fi
    fi

    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
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
  PSX "$dualsdram"
fi
if [ "$s32x" == "1" ]; then
  S32X
fi
if [ "$sgb" == "1" ]; then
  SGB
fi
if [ "$saturn" == "1" ]; then
  Saturn "$dualsdram"
fi
if [ "$neogeo" == "1" ]; then
  NeoGeo
fi


echo "Completed"
echo ""