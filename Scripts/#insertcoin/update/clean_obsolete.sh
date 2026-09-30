#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/setup.sh

loadsetup

echo -e "Cleaning obsolete/unwanted core"
#echo "remove_other : $remove_other"
if [ "$remove_other" == "1" ]; then
  if [ -d "/media/fat/_Other" ] 
  then
    #echo "rm _Other"
    rm -r "/media/fat/_Other"
  fi
fi

debug="0"

function debug {

if [ "$debug" == "1" ]; then
   echo -e "$1"
fi
}

# Les cores gérés par res.sh (delrbf dans process) ne sont plus nettoyés ici :
# res.sh supprime leurs anciens .rbf avant d'installer ceux du zip.
# Ne restent que les cores absents de res.sh ou dont le delrbf ne couvre pas tout.

debug "jtargus"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "jtargus_*" ! -name "jtargus_20260502.rbf"
fi
find $CORE -maxdepth 1 -type f -name "jtargus_*" ! -name "jtargus_20260502.rbf" -delete

debug "NaughtyBoy"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "NaughtyBoy_*" ! -name "NaughtyBoy_20250714.rbf"
fi
find $CORE -maxdepth 1 -type f -name "NaughtyBoy_*" ! -name "NaughtyBoy_20250714.rbf" -delete

# Psikyo : le process "Psikyo" de res.sh n'a pas de delrbf
debug "Psikyo"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Psikyo_*" ! -name "Psikyo_20260914.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Psikyo_*" ! -name "Psikyo_20260914.rbf" -delete

debug "StarForce"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "StarForce_*" ! -name "Starforce_20260418.rbf"
fi
find $CORE -maxdepth 1 -type f -name "StarForce_*" ! -name "Starforce_20260418.rbf" -delete

debug "Tempest"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Tempest_*" ! -name "Tempest_20260720.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Tempest_*" ! -name "Tempest_20260720.rbf" -delete

debug "Legionnaire"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Legionnaire_*" ! -name "Legionnaire_20260715.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Legionnaire_*" ! -name "Legionnaire_20260715.rbf" -delete

debug "MajorHavoc"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "MajorHavoc_*" ! -name "MajorHavoc_20260730.rbf"
fi
find $CORE -maxdepth 1 -type f -name "MajorHavoc_*" ! -name "MajorHavoc_20260730.rbf" -delete

# Ancien nom XNSYSTEM12 (res.sh ne couvre que SYSTEM12_*)
debug "XNSYSTEM12"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "XNSYSTEM12_*"
fi
find $CORE -maxdepth 1 -type f -name "XNSYSTEM12_*" -delete

debug "Klax"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Klax_*" ! -name "Klax_20260811.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Klax_*" ! -name "Klax_20260811.rbf" -delete

# Toobin : le process "CowBoys" de res.sh n'a pas de delrbf pour Toobin
debug "Toobin"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Toobin_*" ! -name "Toobin_20260813.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Toobin_*" ! -name "Toobin_20260813.rbf" -delete

debug "Volfied"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf" -delete

debug "Rbisland"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Rbisland_*" ! -name "Rbisland_20260813.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Rbisland_*" ! -name "Rbisland_20260813.rbf" -delete

# NARC : res.sh ne supprime que Arcade-NARC-v9.rbf
debug "Arcade-NARC"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Arcade-NARC-*" ! -name "Arcade-NARC-v9.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Arcade-NARC-*" ! -name "Arcade-NARC-v9.rbf" -delete

debug "ChampionBaseball"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "ChampionBaseball_*" ! -name "ChampionBaseball_20260901.rbf"
fi
find $CORE -maxdepth 1 -type f -name "ChampionBaseball_*" ! -name "ChampionBaseball_20260901.rbf" -delete

echo -e "${GREEN}${CHECK}${NC} Completed"
