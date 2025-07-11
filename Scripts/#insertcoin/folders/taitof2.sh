#!/bin/bash  
source ./folders/functions.sh

loadsetup
dir="_Taito-F2"
if [ "$merge_system" == "1" ]; then
      dir="_Taito"
fi

res=$(exist "Liquid Kids (World).mra")
if [ "$res" == "1" ]; then
   outdir=$1
   
   #add "$dir" "V" "Gun Frontier (Japan).mra" "_Gun Frontier" "" "STG"
   add "$dir" "V" "Gun & Frontier (World).mra" "_Gun Frontier" "" "STG"

   #add "$dir" "V" "Majestic Twelve - The Space Invaders Part IV (Japan).mra" "_Super Space Invaders '91" "" "STG"
   #add "$dir" "V" "Majestic Twelve - The Space Invaders Part IV (US, earlier code base).mra" "_Super Space Invaders '91" "" "STG"
   #add "$dir" "V" "Majestic Twelve - The Space Invaders Part IV (US, revised code).mra" "_Super Space Invaders '91" "" "STG"
   #add "$dir" "V" "Majestic Twelve - The Space Invaders Part IV (US, revised code, Rev 1).mra" "_Super Space Invaders '91" "" "STG"
   #add "$dir" "V" "Super Space Invaders '91 (World, earlier code base).mra" "_Super Space Invaders '91" "" "STG"
   #add "$dir" "V" "Super Space Invaders '91 (World, revised code).mra" "_Super Space Invaders '91" "" "STG"
   add "$dir" "V" "Super Space Invaders '91 (World, revised code, Rev 1).mra" "_Super Space Invaders '91" "" "STG"

    add "$dir" "V" "Drift Out (Europe).mra" "_Drift Out" "" "SPO"
    #add "$dir" "V" "Drift Out (Japan).mra" "_Drift Out" "" "SPO"

   #add "$dir" "H" "Cameltry (Japan, YM2610).mra" "_Cameltry" "" "PUZ"
   #add "$dir" "H" "Cameltry (US, YM2610).mra" "_Cameltry" "" "PUZ"
   add "$dir" "H" "Cameltry (World, YM2610).mra" "_Cameltry" "" "PUZ"

    #add "$dir" "H" "Dino Rex (Japan).mra" "_Dino Rex" "" "VSF"
    #add "$dir" "H" "Dino Rex (US).mra" "_Dino Rex" "" "VSF"
    add "$dir" "H" "Dino Rex (World).mra" "_Dino Rex" "" "VSF"

    #add "$dir" "H" "Don Doko Don (Japan, rev 1).mra" "_Don Doko Don" "" "ACT"
    #add "$dir" "H" "Don Doko Don (US, rev 1).mra" "_Don Doko Don" "" "ACT"
    add "$dir" "H" "Don Doko Don (World, rev 1).mra" "_Don Doko Don" "" "ACT"

    #add "$dir" "H" "Final Blow (Japan).mra" "_Final Blow" "" "SPO"
    #add "$dir" "H" "Final Blow (US, rev 1).mra" "_Final Blow" "" "SPO"
    add "$dir" "H" "Final Blow (World).mra" "_Final Blow" "" "SPO"

    #add "$dir" "H" "Growl (US).mra" "_Growl" "" "BEA"
    #add "$dir" "H" "Growl (World, prototype).mra" "_Growl" "" "BEA"
    #add "$dir" "H" "Growl (World).mra" "_Growl" "" "BEA"
    #add "$dir" "H" "Runark (Japan).mra" "_Growl" "" "BEA"
    add "$dir" "H" "Growl (World, Rev 1).mra" "_Growl" "" "BEA"

    #add "$dir" "H" "Mizubaku Daibouken (Japan).mra" "_Liquid Kids" "" "ACT"
    add "$dir" "H" "Liquid Kids (World).mra" "_Liquid Kids" "" "ACT"
    
    #add "$dir" "H" "Mega Blast (Japan).mra" "_Mega Blast" "" "STG"
    #add "$dir" "H" "Mega Blast (US).mra" "_Mega Blast" "" "STG"
    add "$dir" "H" "Mega Blast (World).mra" "_Mega Blast" "" "STG"

    add "$dir" "H" "Solitary Fighter (World).mra" "_Solitary Fighter" "" "VSF"
    add "$dir" "H" "The Ninja Kids (World).mra" "_The Ninja Kids" "" "BEA"
    add "$dir" "H" "PuLiRuLa (World, dual PCB).mra" "_PuLiRuLa" "" "BEA"

#unreleased mras :
#   add "$dir" "H" "Ah Eikou no Koshien.mra" "_Ah Eikou no Koshien" "" "SPO"
#   add "$dir" "H" "Dead Connection.mra" "_Dead Connection" "" "ACT"
#   add "$dir" "H" "Euro Champ '92.mra" "_Euro Champ '92" "" "SPO"
#   add "$dir" "H" "Football Champ.mra" "_ Football Champ" "" "SPO"
#   add "$dir" "H" "Hat Trick Hero.mra" "_Hat Trick Hero" "" "SPO"
#   add "$dir" "H" "Mahjong Quest.mra" "_Mahjong Quest" "" ""
#   add "$dir" "H" "Metal Black.mra" "_Metal Black" "" "STG"
#   add "$dir" "H" "Pu.Li.Ru.La.mra" "_Pu.Li.Ru.La" "" ""
#   add "$dir" "H" "Quiz Chikyu Bouei Gun.mra" "_Quiz Chikyu Bouei Gun" "" ""
#   add "$dir" "H" "Quiz Crayon Shinchan.mra" "_Quiz Crayon Shinchan" "" ""
#   add "$dir" "H" "Quiz Crayon Shinchan Orato Asobo.mra" "_Quiz Crayon Shinchan Orato Asobo" "" ""
#   add "$dir" "H" "Quiz H.Q..mra" "_Quiz H.Q." "" ""
#   add "$dir" "H" "Quiz Jinsei Gekijoh.mra" "_Quiz Jinsei Gekijoh" "" ""
#   add "$dir" "H" "Quiz Quest.mra" "_Quiz Quest" "" ""
#   add "$dir" "H" "Quiz Torimonochou.mra" "_Quiz Torimonochou" "" ""

   add "$dir" "H" "Thunder Fox (World, rev 1).mra" "_Thunder Fox" "" "RNG"
#   add "$dir" "H" "Yes-No Sinri Tokimeki Chart.mra" "_Yes-No Sinri Tokimeki Chart" "" ""
#   add "$dir" "H" "YuuYu no Quiz de Go!Go!.mra" "_YuuYu no Quiz de Go!Go!" "" ""

  dot
fi
