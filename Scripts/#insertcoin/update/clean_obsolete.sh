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

debug "jtargus"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "jtargus_*" ! -name "jtargus_20260502.rbf"
fi
find $CORE -maxdepth 1 -type f -name "jtargus_*" ! -name "jtargus_20260502.rbf" -delete

debug "NaughtyBoy"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "NaughtyBoy_*" ! -name "NaughtyBoy_20250714.rbf"
fi
find $CORE -maxdepth 1 -type f -name "NaughtyBoy_*" ! -name "NaughtyBoy_20250714.rbf" -delete

debug "PsikyoSH"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "PsikyoSH2_*" ! -name "PsikyoSH2_20260817.rbf"
fi
find $CORE -maxdepth 1 -type f -name "PsikyoSH2_*" ! -name "PsikyoSH2_20260817.rbf" -delete

debug "Psikyo"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Psikyo_*" ! -name "Psikyo_20260901.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Psikyo_*" ! -name "Psikyo_20260901.rbf" -delete

debug "StarForce"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "StarForce_*" ! -name "Starforce_20260418.rbf"
fi
find $CORE -maxdepth 1 -type f -name "StarForce_*" ! -name "Starforce_20260418.rbf" -delete

debug "Tempest"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Tempest_*" ! -name "Tempest_20260720.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Tempest_*" ! -name "Tempest_20260720.rbf" -delete

debug "Millipede"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Millipede_*" ! -name "Millipede_20260518.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Millipede_*" ! -name "Millipede_20260518.rbf" -delete

debug "CloakAndDagger"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "CloakAndDagger_*" ! -name "CloakAndDagger_20260708.rbf"
fi
find $CORE -maxdepth 1 -type f -name "CloakAndDagger_*" ! -name "CloakAndDagger_20260708.rbf" -delete

debug "Legionnaire"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Legionnaire_*" ! -name "Legionnaire_20260715.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Legionnaire_*" ! -name "Legionnaire_20260715.rbf" -delete

debug "MajorHavoc"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "MajorHavoc_*" ! -name "MajorHavoc_20260730.rbf"
fi
find $CORE -maxdepth 1 -type f -name "MajorHavoc_*" ! -name "MajorHavoc_20260730.rbf" -delete

debug "XNSYSTEM11"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "XNSYSTEM11_*" 
fi
find $CORE -maxdepth 1 -type f -name "XNSYSTEM11_*" -delete

if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "SYSTEM11_*" 
fi
find $CORE -maxdepth 1 -type f -name "SYSTEM11_*" ! -name "SYSTEM11_20260818.rbf" -delete


debug "XNSYSTEM12" 
#delete previous XNSYSTEM12
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "XNSYSTEM12_20260804.rbf"
fi
find $CORE -maxdepth 1 -type f -name "XNSYSTEM12_20260804.rbf" -delete

if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "SYSTEM12_20260818.rbf"
fi
find $CORE -maxdepth 1 -type f -name "SYSTEM12_*.rbf" ! -name "SYSTEM12_20260818.rbf" -delete

debug "XNZN1"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "XNZN1_*" ! -name "XNZN1_20260721.rbf"
fi
find $CORE -maxdepth 1 -type f -name "XNZN1_*" ! -name "XNZN1_20260721.rbf" -delete

debug "XNZN1TaitoFX1B"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "XNZN1TaitoFX1B_*" ! -name "XNZN1TaitoFX1B_20260814.rbf"
fi
find $CORE -maxdepth 1 -type f -name "XNZN1_*" ! -name "XNZN1TaitoFX1B_20260814.rbf" -delete

debug "xnbrkthru"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "xnbrkthru_*" ! -name "xnbrkthru_20260705.rbf"
fi
find $CORE -maxdepth 1 -type f -name "xnbrkthru_*" ! -name "xnbrkthru_20260705.rbf" -delete

debug "Klax"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Klax_*" ! -name "Klax_20260811.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Klax_*" ! -name "Klax_20260811.rbf" -delete

debug "Toobin"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Toobin_*" ! -name "Toobin_20260813.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Toobin_*" ! -name "Toobin_20260813.rbf" -delete

debug "SegaVCO"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "SegaVCO_*" ! -name "SegaVCO_20260801.rbf"
fi
find $CORE -maxdepth 1 -type f -name "SegaVCO_*" ! -name "SegaVCO_20260801.rbf" -delete

debug "glass"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "glass_*" ! -name "glass_20260713.rbf"
fi
find $CORE -maxdepth 1 -type f -name "glass_*" ! -name "glass_20260713.rbf" -delete

debug "SuperOffRoad"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "SuperOffRoad_*" ! -name "SuperOffRoad_20260726.rbf"
fi
find $CORE -maxdepth 1 -type f -name "SuperOffRoad_*" ! -name "SuperOffRoad_20260726.rbf" -delete

debug "KickAndRun"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Kick*" ! -name "KickAndRun_20260801.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Kick*" ! -name "KickAndRun_20260801.rbf" -delete

debug "Volfied"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf" -delete

debug "Rbisland"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Rbisland_*" ! -name "Rbisland_20260813.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Rbisland_*" ! -name "Rbisland_20260813.rbf" -delete

debug "TwinHawk"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "TwinHawk_*" ! -name "TwinHawk_20260813.rbf"
fi
find $CORE -maxdepth 1 -type f -name "TwinHawk_*" ! -name "TwinHawk_20260813.rbf" -delete

debug "Arcade-NARC"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "Arcade-NARC-*" ! -name "Arcade-NARC-v9.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Arcade-NARC-*" ! -name "Arcade-NARC-v9.rbf" -delete

debug "SMS"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "SMS_*" ! -name "SMS_20260804.rbf"
fi
find $CORE -maxdepth 1 -type f -name "SMS_*" ! -name "SMS_20260804.rbf" -delete

debug "cave"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "cave_*" ! -name "Cave_20260825.rbf"
fi
find $CORE -maxdepth 1 -type f -name "cave_*" ! -name "Cave_20260825.rbf" -delete

debug "SSV"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "SSV*" ! -name "SSV_20260828.rbf"
fi
find $CORE -maxdepth 1 -type f -name "SSV*" ! -name "SSV_20260828.rbf" -delete

debug "cave"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "cave_*" ! -name "Guardians_20260824.rbf"
fi
find $CORE -maxdepth 1 -type f -name "Guardians_*" ! -name "Guardians_20260824.rbf" -delete

debug "SKNS"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "SKNS_*" ! -name "SKNS_20260901.rbf"
fi
find $CORE -maxdepth 1 -type f -name "SKNS_*" ! -name "SKNS_20260901.rbf" -delete

debug "ChampionBaseball"
if [ "$debug" -eq 1 ]; then find $CORE -maxdepth 1 -type f -name "ChampionBaseball_*" ! -name "ChampionBaseball_20260901.rbf"
fi
find $CORE -maxdepth 1 -type f -name "SKNS_*" ! -name "ChampionBaseball_20260901.rbf" -delete


echo -e "${GREEN}${CHECK}${NC} Completed"
