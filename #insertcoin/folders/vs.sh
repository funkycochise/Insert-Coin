#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep vs $names)
else
   vs="_Nintendo Vs."
fi
#vs="_Nintendo Vs."
dir=$vs

resh=$(exist "Metal Slug - Super Vehicle-001.mgl")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   	outdir=$1

add "$dir" "H"  "Vs. Atari R.B.I. Baseball  (set 1).mra" "_Vs. Atari R.B.I. Baseball" ""
	add "$dir" "H"  "Vs. Atari R.B.I. Baseball (set 2).mra" "_Vs. Atari R.B.I. Baseball" ""
	add "$dir" "H"  "Vs. Balloon Fight (set BF4 A-3).mra" "_Vs. Balloon Fight" ""
	add "$dir" "H"  "Vs. Baseball (Japan, set BA A-1).mra" "_Vs. Baseball" ""
	add "$dir" "H"  "Vs. Baseball (Japan, set BA A-2).mra" "_Vs. Baseball" ""
	add "$dir" "H"  "Vs. Baseball (Japan, set BA A-3).mra" "_Vs. Baseball" ""
	add "$dir" "H"  "Vs. Baseball (US, set BA E-1).mra" "_Vs. Baseball" ""
	add "$dir" "H"  "Vs. Battle City.mra" "_Vs. Battle City" ""
	add "$dir" "H"  "Vs. Castlevania.mra" "_Vs. Castlevania" ""
	add "$dir" "H"  "Vs. Clu Clu Land.mra" "_Vs. Clu Clu Land" ""
	add "$dir" "H"  "Vs. Dr. Mario.mra" "_Vs. Dr. Mario" ""
	add "$dir" "H"  "Vs. Duck Hunt (set DH3 E).mra" "_Vs. Duck Hunt" ""
	add "$dir" "H"  "Vs. Excitebike (set EB4-3 E).mra" "_Vs. Excitebike" ""
	add "$dir" "H"  "Vs. Excitebike (set EB4-3).mra" "_Vs. Excitebike" ""
	add "$dir" "H"  "Vs. Excitebike (set EB4-4 A).mra" "_Vs. Excitebike" ""
	add "$dir" "H"  "Vs. Freedom Force.mra" "_Vs. Freedom Force" ""
	add "$dir" "H"  "Vs. From Below.mra" "_Vs. From Below" ""
	add "$dir" "H"  "Vs. Gradius (US, set GR E).mra" "_Vs. Gradius" ""
	add "$dir" "H"  "Vs. Gumshoe.mra" "_Vs. Gumshoe" ""
	add "$dir" "H"  "Vs. Hogan's Alley.mra" "_Vs. Hogan's Alley" ""
	add "$dir" "H"  "Vs. Ice Climber Dual (set IC4-4 A-1).mra" "" ""
	add "$dir" "H"  "Vs. Ice Climber (set IC4-4 B-1).mra" "_Vs. Ice Climber" ""
	add "$dir" "H"  "Vs. Ice Climber (set IC4-4 ).mra" "_Vs. Ice Climber" ""
	add "$dir" "H"  "Vs. Mach Rider (Endurance Course Version).mra" "_Vs. Mach Rider" ""
	add "$dir" "H"  "Vs. Mach Rider (Fighting Course Version).mra" "_Vs. Mach Rider" ""
	add "$dir" "H"  "Vs. Mahjong (Japan).mra" "_Vs. Mahjong" ""
	add "$dir" "H"  "Vs. Mighty Bomb Jack (Japan).mra" "_Vs. Mighty Bomb Jack" ""
	add "$dir" "H"  "Vs. Ninja Jajamaru Kun (Japan).mra" "_Vs. Ninja Jajamaru Kun" ""
	add "$dir" "H"  "Vs. Pinball (E-1 Set).mra" "_Vs. Pinball" ""
	add "$dir" "H"  "Vs. Pinball (Japan).mra" "_Vs. Pinball" ""
	add "$dir" "H"  "Vs. Platoon.mra" "_Vs. Platoon" ""
	add "$dir" "H"  "Vs. Raid on Bungeling Bay (RD4-2 B).mra" "_Vs. Raid on Bungeling Bay" ""
	add "$dir" "H"  "Vs. Skate Kids (Two-Bit Score).mra" "_Vs. Skate Kids" ""
	add "$dir" "H"  "Vs. Slalom.mra" "_Vs. Slalom" ""
	add "$dir" "H"  "Vs. Soccer (set SC4-2 A).mra" "_Vs. Soccer" ""
	add "$dir" "H"  "Vs. Soccer (set SC4-3).mra" "_Vs. Soccer" ""
	add "$dir" "H"  "Vs. Star Luster.mra" "_Vs. Star Luster" ""
	add "$dir" "H"  "Vs. Stroke & Match Golf (Japan, Men Version).mra" "_Vs. Stroke & Match Golf" ""
	add "$dir" "H"  "Vs. Stroke & Match Golf (Ladies Version).mra" "_Vs. Stroke & Match Golf" ""
	add "$dir" "H"  "Vs. Stroke & Match Golf (Ladies Version, set E).mra" "_Vs. Stroke & Match Golf" ""
	add "$dir" "H"  "Vs. Stroke & Match Golf (Men Version).mra" "_Vs. Stroke & Match Golf" ""
	add "$dir" "H"  "Vs. Stroke & Match Golf (Men Version, set GF4-2).mra" "_Vs. Stroke & Match Golf" ""
	add "$dir" "H"  "Vs. Super Mario Bros. (set harder).mra" "_Vs. Super Mario Bros." ""
	add "$dir" "H"  "Vs. Super Mario Bros. (set SM4-4 E).mra" "_Vs. Super Mario Bros." ""
	add "$dir" "H"  "Vs. Super SkyKid.mra" "_Vs. Super SkyKid" ""
	add "$dir" "H"  "Vs. Super Xevious.mra" "_Vs. Super Xevious" ""
	add "$dir" "H"  "Vs. Tennis (Japan USA, set 2).mra" "_Vs. Tennis" ""
	add "$dir" "H"  "Vs. Tennis (Japan USA, set 3).mra" "_Vs. Tennis" ""
	add "$dir" "H"  "Vs. Tennis (Japan USA, set TE A-3).mra" "_Vs. Tennis" ""
	add "$dir" "H"  "Vs. Tetris.mra" "_Vs. Tetris" ""
	add "$dir" "H"  "Vs. The Goonies (set E).mra" "_Vs. The Goonies" ""
	add "$dir" "H"  "Vs. T.K.O. Boxing.mra" "_Vs. T.K.O. Boxing" ""
	add "$dir" "H"  "Vs. Top Gun.mra" "_Vs. Top Gun" ""
	add "$dir" "H"  "Vs. Urban Champion.mra" "_Vs. Urban Champion" ""
	add "$dir" "H"  "Vs. Wrecking Crew.mra" "_Vs. Wrecking Crew" ""

   dot
fi
