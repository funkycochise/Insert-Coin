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

find $CORE -maxdepth 1 -type f -name "jtargus_*" ! -name "jtargus_20260502.rbf"
find $CORE -maxdepth 1 -type f -name "jtargus_*" ! -name "jtargus_20260502.rbf" -delete

find $CORE -maxdepth 1 -type f -name "NaughtyBoy_*" ! -name "NaughtyBoy_20250714.rbf"
find $CORE -maxdepth 1 -type f -name "NaughtyBoy_*" ! -name "NaughtyBoy_20250714.rbf" -delete

find $CORE -maxdepth 1 -type f -name "PsikyoSH2_*" ! -name "PsikyoSH2_20260731.rbf"
find $CORE -maxdepth 1 -type f -name "PsikyoSH2_*" ! -name "PsikyoSH2_20260731.rbf" -delete

find $CORE -maxdepth 1 -type f -name "StarForce_*" ! -name "Starforce_20260418.rbf"
find $CORE -maxdepth 1 -type f -name "StarForce_*" ! -name "Starforce_20260418.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Tempest_*" ! -name "Tempest_20260720.rbf"
find $CORE -maxdepth 1 -type f -name "Tempest_*" ! -name "Tempest_20260720.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Millipede_*" ! -name "Millipede_20260518.rbf"
find $CORE -maxdepth 1 -type f -name "Millipede_*" ! -name "Millipede_20260518.rbf" -delete

find $CORE -maxdepth 1 -type f -name "CloakAndDagger_*" ! -name "CloakAndDagger_20260708.rbf"
find $CORE -maxdepth 1 -type f -name "CloakAndDagger_*" ! -name "CloakAndDagger_20260708.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Legionnaire_*" ! -name "Legionnaire_20260715.rbf"
find $CORE -maxdepth 1 -type f -name "Legionnaire_*" ! -name "Legionnaire_20260715.rbf" -delete

find $CORE -maxdepth 1 -type f -name "MajorHavoc_*" ! -name "MajorHavoc_20260730.rbf"
find $CORE -maxdepth 1 -type f -name "MajorHavoc_*" ! -name "MajorHavoc_20260730.rbf" -delete

find $CORE -maxdepth 1 -type f -name "XNSYSTEM11_*" ! -name "XNSYSTEM11_20260727.rbf"
find $CORE -maxdepth 1 -type f -name "XNSYSTEM11_*" ! -name "XNSYSTEM11_20260727.rbf" -delete

find $CORE -maxdepth 1 -type f -name "XNSYSTEM11_*" ! -name "XNSYSTEM12_20260804.rbf"
find $CORE -maxdepth 1 -type f -name "XNSYSTEM11_*" ! -name "XNSYSTEM12_20260804.rbf" -delete

find $CORE -maxdepth 1 -type f -name "XNZN1_*" ! -name "XNZN1_20260721.rbf"
find $CORE -maxdepth 1 -type f -name "XNZN1_*" ! -name "XNZN1_20260721.rbf" -delete

find $CORE -maxdepth 1 -type f -name "xnbrkthru_*" ! -name "xnbrkthru_20260705.rbf"
find $CORE -maxdepth 1 -type f -name "xnbrkthru_*" ! -name "xnbrkthru_20260705.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Klax_*" ! -name "Klax_20260729.rbf"
find $CORE -maxdepth 1 -type f -name "Klax_*" ! -name "Klax_20260729.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Toobin_*" ! -name "Toobin_20260729.rbf"
find $CORE -maxdepth 1 -type f -name "Toobin_*" ! -name "Toobin_20260729.rbf" -delete

find $CORE -maxdepth 1 -type f -name "SegaVCO_*" ! -name "SegaVCO_20260801.rbf"
find $CORE -maxdepth 1 -type f -name "SegaVCO_*" ! -name "SegaVCO_20260801.rbf" -delete

find $CORE -maxdepth 1 -type f -name "glass_*" ! -name "glass_20260713.rbf"
find $CORE -maxdepth 1 -type f -name "glass_*" ! -name "glass_20260713.rbf" -delete

find $CORE -maxdepth 1 -type f -name "SuperOffRoad_*" ! -name "SuperOffRoad_20260726.rbf"
find $CORE -maxdepth 1 -type f -name "SuperOffRoad_*" ! -name "SuperOffRoad_20260726.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf"
find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Rbisland_*" ! -name "Rbisland_20260805.rbf"
find $CORE -maxdepth 1 -type f -name "Rbisland_*" ! -name "Rbisland_20260805.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf"
find $CORE -maxdepth 1 -type f -name "Volfied_*" ! -name "Volfied_20260806.rbf" -delete

find $CORE -maxdepth 1 -type f -name "Arcade-NARC-*" ! -name "Arcade-NARC-v9.rbf"
find $CORE -maxdepth 1 -type f -name "Arcade-NARC-*" ! -name "Arcade-NARC-v9.rbf" -delete

find $CORE -maxdepth 1 -type f -name "SMS_*" ! -name "SMS_20260804.rbf"
find $CORE -maxdepth 1 -type f -name "SMS_*" ! -name "SMS_20260804.rbf" -delete

echo -e "${GREEN}${CHECK}${NC} Completed"


