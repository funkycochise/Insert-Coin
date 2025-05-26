#!/bin/bash  
source ./folders/functions.sh

loadsetup
res=$(exist "Liquid Kids.mra")
if [ "$res" == "1" ]; then
   dir="_Taito-F2"
   outdir=$1
#  add "$dir" "V" "Gun Frontier.mra" "_Gun Frontier" "" "STG"
#   add "$dir" "V" "Majestic Twelve.mra" "_Majestic Twelve" "" "STG"
#   add "$dir" "V" "Drift Out.mra" "_Drift Out" "" "SPO"

#   add "$dir" "H" "Ah Eikou no Koshien.mra" "_Ah Eikou no Koshien" "" "SPO"
#   add "$dir" "H" "Cameltry.mra" "_Cameltry" "" "PUZ"
#   add "$dir" "H" "Dead Connection.mra" "_Dead Connection" "" "ACT"
#   add "$dir" "H" "Dino Rex.mra" "_Dino Rex" "" "VSF"
#   add "$dir" "H" "Don Doko Don.mra" "_Don Doko Don" "" "ACT"
#   add "$dir" "H" "Euro Champ '92.mra" "_Euro Champ '92" "" "SPO"
#   add "$dir" "H" "Final Blow.mra" "_Final Blow" "" "SPO"
#   add "$dir" "H" "Football Champ.mra" "_ Football Champ" "" "SPO"
#   add "$dir" "H" "Growl.mra" "_Growl" "" "BEA"
#   add "$dir" "H" "Hat Trick Hero.mra" "_Hat Trick Hero" "" "SPO"
#   add "$dir" "H" "Liquid Kids.mra" "_Liquid Kids" "" "ACT"
#   add "$dir" "H" "Mahjong Quest.mra" "_Mahjong Quest" "" ""
#   add "$dir" "H" "Mega Blast.mra" "_Mega Blast" "" "STG"
#   add "$dir" "H" "Metal Black.mra" "_Metal Black" "" "STG"
#   add "$dir" "H" "Pu.Li.Ru.La.mra" "_Pu.Li.Ru.La" "" ""
#   add "$dir" "H" "Quiz Chikyu Bouei Gun.mra" "_Quiz Chikyu Bouei Gun" "" ""
#   add "$dir" "H" "Quiz Crayon Shinchan.mra" "_Quiz Crayon Shinchan" "" ""
#   add "$dir" "H" "Quiz Crayon Shinchan Orato Asobo.mra" "_Quiz Crayon Shinchan Orato Asobo" "" ""
#   add "$dir" "H" "Quiz H.Q..mra" "_Quiz H.Q." "" ""
#   add "$dir" "H" "Quiz Jinsei Gekijoh.mra" "_Quiz Jinsei Gekijoh" "" ""
#   add "$dir" "H" "Quiz Quest.mra" "_Quiz Quest" "" ""
#   add "$dir" "H" "Quiz Torimonochou.mra" "_Quiz Torimonochou" "" ""
#   add "$dir" "H" "Solitary Fighter.mra" "_Solitary Fighter" "" "VSF"
#   add "$dir" "H" "The Ninja Kids.mra" "_The Ninja Kids" "" "ACT"
#   add "$dir" "H" "Thunder Fox.mra" "_Thunder Fox" "" "RNG"
#   add "$dir" "H" "Yes-No Sinri Tokimeki Chart.mra" "_Yes-No Sinri Tokimeki Chart" "" ""
#   add "$dir" "H" "YuuYu no Quiz de Go!Go!.mra" "_YuuYu no Quiz de Go!Go!" "" ""

  dot
fi
