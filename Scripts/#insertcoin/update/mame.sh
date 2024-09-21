 # !/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

TEMP=/media/fat/scripts/temp
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs
ARCHIVE_MERGED=https://ia600802.us.archive.org/30/items/insertcoin_res_mame
ARCHIVE_NEOGEO=https://ia904607.us.archive.org/28/items/mister-neogeo-pack

source <(grep setup_mame $ini)
setup_mame="${setup_mame:0:3}"
#echo "setup_mame: $setup_mame"

function identify_folder {

if [ "$setup_mame" == "USB" ]; then
   des_games=$USB/games
   des_mame=$des_games/mame
elif [ "$setup_mame" == "CIF" ]; then
   des_games=$CIFS/games
   des_mame=$des_games/mame
else
   des_games=$SD/games
   des_mame=$des_games/mame
fi
if ! [ -d "$des_games" ]; then
   mkdir $des_games
fi
if ! [ -d "$des_mame" ]; then
   mkdir $des_mame
fi
if [ ! -d "$TEMP" ] 
then
   mkdir $TEMP
fi 
}

function dl {

    FILE=$des_mame/$1
    #echo "dl : $des_mame/$1"

    if ! test -f "$FILE"; then
      #file doesn not exists
      if [ "$TERM" == "linux" ]; then
         #GUI
         echo -n "   downloading $1"
      else
         echo -n "downloading $1"   
      fi
      curl $ARCHIVE_MERGED/$1 -o $des_mame/$1 -k -s
      #wget $ARCHIVE_MERGED/$1 -P $TEMP -q
      #mv $TEMP/$1 $des_mame/$1 
      if [ "$TERM" == "linux" ]; then
        #GUI
         echo -e "\r   ${BLUE}${CHECK}${NC} $1                                            "
      else
         echo -e "\r${BLUE}${CHECK}${NC} $1                                            "
      fi
   #else
    # echo "$1 already exixts"
   fi

}

function neo {

    #echo "des_mame $des_mame"

    FILE=$des_mame/$1
    #echo "retrieve $FILE"
    if ! test -f "$FILE"; then
      if [ "$TERM" == "linux" ]; then
         #GUI
         echo -n "   downloading $1"
      else
         echo -n "downloading $1"         
      fi

      #file doesn not exists
      #curl $ARCHIVE_NEOGEO/$1 -O -k
      wget $ARCHIVE_NEOGEO/$1 -P $TEMP -q
      mv $TEMP/$1 $des_mame/$1 
      if [ "$TERM" == "linux" ]; then
         #GUI
         echo -e "\r   ${BLUE}${CHECK}${NC} $1                                            "
      else
         echo -e "\r${BLUE}${CHECK}${NC} $1                                            "
      fi
    #else
#     echo "$1 already exixts"
   fi

}

function clean {
   identify_folder

   FILE=$des_mame/$1
   if test -f "$FILE"; then
      rm $FILE
   fi
}

identify_folder
#echo "des_mame $des_mame"

if [ "$TERM" == "linux" ]; then
   #GUI
   echo "   Updating mame folder $des_mame"
else
   echo "Updating mame folder $des_mame"
fi 

clean "amidaru.zip"
clean "atetrisc.zip"
clean "atetrisc2.zip"
clean "capitol.zip"
clean "cheat.zip"
clean "crush2.zip"
clean "devilfsg.zip"
clean "imsorryj.zip"
clean "makaimur.zip"
clean "pacman.zip"
clean "rushatck.zip"
clean "solomonj.zip"
clean "sprint2.zip"
clean "victorycb.zip"
dl "1941.zip"
dl "1942.zip"
dl "1943.zip"
dl "1943kai.zip"
dl "1943mii.zip"
dl "1944.zip"
dl "19xx.zip"
dl "280zzzap.zip"
dl "3wonders.zip"
dl "4dwarrio.zip"
dl "aceattac.zip"
dl "afighter.zip"
dl "airass.zip"
dl "airduel.zip"
dl "alcon.zip"
dl "alexkidd.zip"
dl "alibaba.zip"
dl "alienar.zip"
dl "aliens.zip"
dl "aliensyn.zip"
dl "alpha1v.zip"
dl "alpine.zip"
dl "altbeast.zip"
dl "amazon.zip"
dl "amidar.zip"
dl "anteater.zip"
dl "arkanoid.zip"
dl "arknoid2.zip"
dl "armedf.zip"
dl "armorcar.zip"
dl "armwar.zip"
dl "aso.zip"
dl "astdelux.zip"
dl "asteroid.zip"
dl "astorm.zip"
dl "astyanax.zip"
dl "atarisy1.zip"
dl "atetris.zip"
dl "athena.zip"
dl "atlantis.zip"
dl "attackfc.zip"
dl "aurail.zip"
dl "avengers.zip"
dl "avsp.zip"
dl "avspirit.zip"
dl "azurian.zip"
dl "baddudes.zip"
dl "bagman.zip"
dl "bakutotu.zip"
dl "ballbomb.zip"
dl "bankp.zip"
dl "batcir.zip"
dl "batrider.zip"
dl "battroad.zip"
dl "bayroute.zip"
dl "bbakraid.zip"
dl "bchopper.zip"
dl "berabohm.zip"
dl "berzerk.zip"
dl "bgaregga.zip"
dl "bilyard.zip"
dl "bioatack.zip"
dl "bionicc.zip"
dl "birdiy.zip"
dl "blastoff.zip"
dl "blazer.zip"
dl "blkhole.zip"
dl "blktiger.zip"
dl "block.zip"
dl "blockgal.zip"
dl "bloxeed.zip"
dl "blueshrk.zip"
dl "bmaster.zip"
dl "bodyslam.zip"
dl "bombjack.zip"
dl "boothill.zip"
dl "bosco.zip"
dl "botanic.zip"
dl "bouldash.zip"
dl "bowler.zip"
dl "boxyboy.zip"
dl "brain.zip"
dl "brubber.zip"
dl "btime.zip"
dl "btoads.zip"
dl "bubbles.zip"
dl "bublbobl.zip"
dl "bullet.zip"
dl "bullfgt.zip"
dl "bwidow.zip"
dl "bzone.zip"
dl "calipso.zip"
dl "canyon.zip"
dl "captcomm.zip"
dl "carnival.zip"
dl "catacomb.zip"
dl "cavenger.zip"
dl "cawing.zip"
dl "ccastles.zip"
dl "cclimber.zip"
dl "cclimbr2.zip"
dl "centiped.zip"
dl "chameleo.zip"
dl "checkmat.zip"
dl "chelnov.zip"
dl "choko.zip"
dl "choplift.zip"
dl "chukatai.zip"
dl "circusc.zip"
dl "ckong.zip"
dl "ckongpt2.zip"
dl "clowns.zip"
dl "cltchitr.zip"
dl "clubpacm.zip"
dl "colony7.zip"
dl "combatsc.zip"
dl "combh.zip"
dl "commando.zip"
dl "congo.zip"
dl "contra.zip"
dl "cosmccop.zip"
dl "cosmica.zip"
dl "cosmicg.zip"
dl "cosmo.zip"
dl "cotton.zip"
dl "countryc.zip"
dl "crater.zip"
dl "crbaloon.zip"
dl "crimfght.zip"
dl "crush.zip"
dl "csclub.zip"
dl "curvebal.zip"
dl "cworld.zip"
dl "cworld2j.zip"
dl "cybots.zip"
dl "dakkochn.zip"
dl "dangar.zip"
dl "dangseed.zip"
dl "darkplnt.zip"
dl "dbreed.zip"
dl "ddcrew.zip"
dl "ddonpach.zip"
dl "ddragon.zip"
dl "ddragon2.zip"
dl "ddsom.zip"
dl "ddtod.zip"
dl "ddux.zip"
dl "defender.zip"
dl "demoderb.zip"
dl "demonwld.zip"
dl "desertbr.zip"
dl "devilfsh.zip"
dl "devzone.zip"
dl "digdug.zip"
dl "digdug2.zip"
dl "dimahoo.zip"
dl "dino.zip"
dl "dkong.zip"
dl "dkong3.zip"
dl "dkongjr.zip"
dl "dockman.zip"
dl "dogpatch.zip"
dl "dokaben.zip"
dl "domino.zip"
dl "dominos.zip"
dl "donpachi.zip"
dl "dorodon.zip"
dl "dotrikun.zip"
dl "dotron.zip"
dl "dplay.zip"
dl "dremshpr.zip"
dl "drtoppel.zip"
dl "dsoccr94.zip"
dl "dspirit.zip"
dl "dstlk.zip"
dl "dunkshot.zip"
dl "dynwar.zip"
dl "ebases.zip"
dl "ecofghtr.zip"
dl "edf.zip"
dl "eeekk.zip"
dl "eggor.zip"
dl "einning.zip"
dl "elevator.zip"
dl "esprade.zip"
dl "eswat.zip"
dl "exctleag.zip"
dl "exedexes.zip"
dl "exerion.zip"
dl "exprraid.zip"
dl "extrmatn.zip"
dl "eyes.zip"
dl "f1dream.zip"
dl "faceoff.zip"
dl "fantzn2.zip"
dl "fantzn2x.zip"
dl "fantzone.zip"
dl "fastlane.zip"
dl "feversos.zip"
dl "ffight.zip"
dl "finalizr.zip"
dl "fireshrk.zip"
dl "fitegolf.zip"
dl "flicky.zip"
dl "foodf.zip"
dl "forgottn.zip"
dl "fpoint.zip"
dl "freeze.zip"
dl "frenzy.zip"
dl "frogger.zip"
dl "frontlin.zip"
dl "fround.zip"
dl "futspy.zip"
dl "gaia.zip"
dl "galactic.zip"
dl "galaga.zip"
dl "galaga88.zip"
dl "galaxian.zip"
dl "galivan.zip"
dl "galxwars.zip"
dl "ganbare.zip"
dl "gangwars.zip"
dl "gaplus.zip"
dl "gardia.zip"
dl "gaunt2.zip"
dl "gauntlet.zip"
dl "gberet.zip"
dl "gbusters.zip"
dl "gemini.zip"
dl "ghouls.zip"
dl "gigawing.zip"
dl "gmissile.zip"
dl "gng.zip"
dl "goldnaxe.zip"
dl "gorf.zip"
dl "gorodki.zip"
dl "gravitar.zip"
dl "grdian.zip"
dl "grobda.zip"
dl "gulunpa.zip"
dl "gunchamp.zip"
dl "gunfight.zip"
dl "gunforc2.zip"
dl "gunforce.zip"
dl "gunsmoke.zip"
dl "guwange.zip"
dl "gyruss.zip"
dl "hachoo.zip"
dl "hamaway.zip"
dl "hangonjr.zip"
dl "hbarrel.zip"
dl "hcastle.zip"
dl "hellfire.zip"
dl "hharry.zip"
dl "higemaru.zip"
dl "hiimpact.zip"
dl "hippodrm.zip"
dl "hook.zip"
dl "horekid.zip"
dl "horizon.zip"
dl "hotdogst.zip"
dl "hsf2.zip"
dl "hvymetal.zip"
dl "hwchamp.zip"
dl "hwrace.zip"
dl "hyperspt.zip"
dl "ikari.zip"
dl "ikari3.zip"
dl "imgfight.zip"
dl "imsorry.zip"
dl "indytemp.zip"
dl "inferno.zip"
dl "insector.zip"
dl "insectx.zip"
dl "inthunt.zip"
dl "invad2ct.zip"
dl "invaders.zip"
dl "invadpt2.zip"
dl "invrvnge.zip"
dl "inyourfa.zip"
dl "ironhors.zip"
dl "ixion.zip"
dl "jack.zip"
dl "jackal.zip"
dl "jailbrek.zip"
dl "jin.zip"
dl "jitsupro.zip"
dl "journey.zip"
dl "joust.zip"
dl "joust2.zip"
dl "jumpshot.zip"
dl "junglek.zip"
dl "junofrst.zip"
dl "jyangoku.zip"
dl "kabukiz.zip"	
dl "kageki.zip"
dl "karnov.zip"
dl "kazan.zip"
dl "kchamp.zip"
dl "kick.zip"
dl "kicker.zip"
dl "kicknrun.zip"
dl "kidniki.zip"
dl "kikstart.zip"
dl "kingball.zip"
dl "kingdmgp.zip"
dl "knights.zip"
dl "kod.zip"
dl "konamigt.zip"
dl "konek.zip"
dl "koroleva.zip"
dl "kot.zip"
dl "kozure.zip"
dl "kroozr.zip"
dl "krull.zip"
dl "kungfum.zip"
dl "ladybug.zip"
dl "lagunar.zip"
dl "ldrun.zip"
dl "ldrun2.zip"
dl "ldrun3.zip"
dl "ldrun4.zip"
dl "legion.zip"
dl "lethalth.zip"
dl "lghost.zip"
dl "lizwiz.zip"
dl "llander.zip"
dl "loht.zip"
dl "losttomb.zip"
dl "lrescue.zip"
dl "luctoday.zip"
dl "lupin3.zip"
dl "lwings.zip"
dl "m4.zip"
dl "magspot.zip"
dl "majtitl2.zip"
dl "mappy.zip"
dl "marble.zip"
dl "mario.zip"
dl "mars.zip"
dl "maxrpm.zip"
dl "mayday.zip"
dl "maze.zip"
dl "mbombrd.zip"
dl "megaman.zip"
dl "megaman2.zip"
dl "megrescu.zip"
dl "mercs.zip"
dl "mia.zip"
dl "midres.zip"
dl "mikie.zip"
dl "mimonkey.zip"
dl "minefld.zip"
dl "missile.zip"
dl "mjleague.zip"
dl "mk.zip"
dl "mmatrix.zip"
dl "mmaze.zip"
dl "mooncrst.zip"
dl "moonqsr.zip"
dl "moonwar.zip"
dl "moonwarp.zip"
dl "motos.zip"
dl "mpang.zip"
dl "mpatrol.zip"
dl "mplanets.zip"
dl "mpumpkin.zip"
dl "mrdo.zip"
dl "mrgoemon.zip"
dl "mrjong.zip"
dl "mrtnt.zip"
dl "mrviking.zip"
dl "msh.zip"
dl "mshvsf.zip"
dl "mspacman.zip"
dl "msword.zip"
dl "mtrap.zip"
dl "mtwins.zip"
dl "mvp.zip"
dl "mvsc.zip"
dl "mwalk.zip"
dl "mx5000.zip"
dl "myhero.zip"
dl "mysticm.zip"
dl "mysticri.zip"
dl "namco50.zip"
dl "namco51.zip"
dl "namco52.zip"
dl "namco54.zip"
dl "nbbatman.zip"
dl "nemesis.zip"
dl "nemo.zip"
dl "ninjakun.zip"
dl "nob.zip"
dl "nomnlnd.zip"
dl "nrallyx.zip"
dl "nspirit.zip"
dl "numcrash.zip"
dl "nwarr.zip"
dl "opaopa.zip"
dl "orbitron.zip"
dl "outrun.zip"
dl "outzone.zip"
dl "ozmawars.zip"
dl "p47.zip"
dl "pacmania.zip"
dl "pacnpal.zip"
dl "pacplus.zip"
dl "paddlema.zip"
dl "pang.zip"
dl "pang3.zip"
dl "panic.zip"
dl "parodius.zip"
dl "passsht.zip"
dl "pengo.zip"
dl "pepper2.zip"
dl "perfrman.zip"
dl "peterpak.zip"
dl "phantom2.zip"
dl "phoenix.zip"
dl "pickin.zip"
dl "pingpong.zip"
dl "pipibibs.zip"
dl "pisces.zip"
dl "pistoldm.zip"
dl "pitfall2.zip"
dl "pkunwar.zip"
dl "playball.zip"
dl "pleiads.zip"
dl "plumppop.zip"
dl "plusalph.zip"
dl "pnickj.zip"
dl "pokonyan.zip"
dl "polaris.zip"
dl "polyplay.zip"
dl "polyplay2.zip"
dl "ponpoko.zip"
dl "pontoon.zip"
dl "pooyan.zip"
dl "popeye.zip"
dl "pow.zip"
dl "powerdrv.zip"
dl "prehisle.zip"
dl "progear.zip"
dl "psychic5.zip"
dl "puckman.zip"
dl "pulsar.zip"
dl "punisher.zip"
dl "punkshot.zip"
dl "pzloop2.zip"
dl "qad.zip"
dl "qbert.zip"
dl "qbertqub.zip"
dl "qndream.zip"
dl "qsound.zip"
dl "qtono2j.zip"
dl "quartet.zip"
dl "quester.zip"
dl "radarscp.zip"
dl "raflesia.zip"
dl "raiders5.zip"
dl "rallybik.zip"
dl "rallyx.zip"
dl "rampage.zip"
dl "rastan.zip"
dl "redbaron.zip"
dl "regulus.zip"
dl "renegade.zip"
dl "rescue.zip"
dl "ridleofp.zip"
dl "ringdest.zip"
dl "riotcity.zip"
dl "roadblst.zip"
dl "roadf.zip"
dl "roadrunn.zip"
dl "robby.zip"
dl "robocop.zip"
dl "robotron.zip"
dl "rocnrope.zip" 
dl "rodland.zip"
dl "rollingc.zip"
dl "rompers.zip"
dl "rpatrol.zip"
dl "rtype.zip"
dl "rtype2.zip"
dl "rtypeleo.zip"
dl "rygar.zip"
dl "ryukyu.zip"
dl "salamand.zip"
dl "sarge.zip"
dl "sbagman.zip"
dl "sbasketb.zip"
dl "sbrkout.zip"
dl "schaser.zip"
dl "scobra.zip"
dl "scontra.zip"
dl "scotrsht.zip"
dl "scramble.zip"
dl "sdi.zip"
dl "searchar.zip"
dl "seawolf.zip"
dl "seawolf2.zip"
dl "secretag.zip"
dl "sectionz.zip"
dl "seganinj.zip"
dl "sf.zip"
dl "sf2.zip"
dl "sf2ce.zip"
dl "sf2hf.zip"
dl "sfa.zip"
dl "sfa2.zip"
dl "sfa3.zip"
dl "sfposeid.zip"
dl "sfz2al.zip"
dl "sfzch.zip"
dl "sgemf.zip"
dl "shadowld.zip"
dl "shadowld.zip"
dl "shangon.zip"
dl "shdancer.zip"
dl "shimpact.zip"
dl "shinobi.zip"
dl "shollow.zip"
dl "shtrider.zip"
dl "shuffle.zip"
dl "shuttlei.zip"
dl "sidearms.zip"
dl "silkworm.zip"
dl "simpsons.zip"
dl "sinistar.zip"
dl "sjryuko.zip"
dl "skyadvnt.zip"
dl "skyrobo.zip"
dl "skyskipr.zip"
dl "skysoldr.zip"
dl "slammast.zip"
dl "slapshtr.zip"
dl "smashtv.zip"
dl "snapjack.zip"
dl "snowbro2.zip"
dl "solarfox.zip"
dl "soldam.zip"
dl "solomon.zip"
dl "sonicbom.zip"
dl "sonson.zip"
dl "sosterm.zip"
dl "spacecr.zip"
dl "spaceskr.zip"
dl "spacezap.zip"
dl "spacwalk.zip"
dl "spang.zip"
dl "spatter.zip"
dl "spcenctr.zip"
dl "spdcoin.zip"
dl "spectar.zip"
dl "spelunk2.zip"
dl "spelunkr.zip"
dl "spf2t.zip"
dl "splat.zip"
dl "splatter.zip"
dl "sprint1.zip"
dl "spyhunt.zip"
dl "squaitsa.zip"
dl "srumbler.zip"
dl "ssf2.zip"
dl "ssf2t.zip"
dl "ssoldier.zip"
dl "sspaceat.zip"
dl "ssriders.zip"
dl "sstriker.zip"
dl "stargate.zip"
dl "stargrds.zip"
dl "starjack.zip"
dl "stdragon.zip"
dl "steelwkr.zip"
dl "stratgyx.zip"
dl "streetsm.zip"
dl "strider.zip"
dl "subs.zip"
dl "sucasino.zip"
dl "superpac.zip"
dl "suprglob.zip"
dl "suprleag.zip"
dl "suprloco.zip"
dl "swat.zip"
dl "szaxxon.zip"
dl "tankbatt.zip"
dl "tankfrce.zip"
dl "tankfrce.zip"
dl "tapper.zip"
dl "targ.zip"
dl "tazmania.zip"
dl "teddybb.zip"
dl "tekipaki.zip"
dl "term2.zip"
dl "terracre.zip"
dl "terraf.zip"
dl "tetris.zip"
dl "tetrisse.zip"
dl "theend.zip"
dl "theroes.zip"
dl "thunderx.zip"
dl "tigerh.zip"
dl "tigeroad.zip"
dl "timber.zip"
dl "timeplt.zip"
dl "timescan.zip"
dl "timesold.zip"
dl "timetunl.zip"
dl "tinstar.zip"
dl "tmnt.zip"
dl "tnextspc.zip"
dl "tnk3.zip"
dl "tnzs.zip"
dl "todruaga.zip"
dl "toki.zip"
dl "tokio.zip"
dl "tokisens.zip"
dl "tornbase.zip"
dl "toryumon.zip"
dl "totcarn.zip"
dl "toutrun.zip"
dl "tp84.zip"
dl "trackfld.zip"
dl "transfrm.zip"
dl "travrusa.zip"
dl "tricktrp.zip"
dl "tripool.zip"
dl "troangel.zip"
dl "trojan.zip"
dl "tron.zip"
dl "truxton.zip"
dl "truxton2.zip"
dl "tshoot.zip"
dl "tturf.zip"
dl "turbotag.zip"
dl "turtles.zip"
dl "twincobr.zip"
dl "twotiger.zip"
dl "twsoc96.zip"
dl "tylz.zip"
dl "uccops.zip"
dl "ufosensi.zip"
dl "ultracin.zip"
dl "ultratnk.zip"
dl "uniwars.zip"
dl "unsquad.zip"
dl "uopoko.zip"
dl "upndown.zip"
dl "vanvan.zip"
dl "varth.zip"
dl "vball.zip"
dl "vendetta.zip"
dl "venture.zip"
dl "vhunt2.zip"
dl "victoryc.zip"
dl "victroad.zip"
dl "vigilant.zip"
dl "vimana.zip"
dl "vortex.zip"
dl "vsav.zip"
dl "vsav2.zip"
dl "vulgus.zip"
dl "wacko.zip"
dl "warofbug.zip"
dl "waterski.zip"
dl "wb3.zip"
dl "wbml.zip"
dl "wboy.zip"
dl "willow.zip"
dl "wldcourt.zip"
dl "wmatch.zip"
dl "wndrplnt.zip"
dl "wof.zip"
dl "wofch.zip"
dl "woodpeck.zip"
dl "wow.zip"
dl "wrestwar.zip"
dl "ws.zip"
dl "wwallyj.zip"
dl "wwestern.zip"
dl "xevious.zip"
dl "xmcota.zip"
dl "xmen.zip"
dl "xmultipl.zip"
dl "xmvsf.zip"
dl "xsleena.zip"
dl "yiear.zip"
dl "yosakdon.zip"
dl "youjyudn.zip"
dl "zaxxon.zip"
dl "zerowing.zip"
dl "zigzagb.zip"
dl "zzyzzyxx.zip"

dl "ffightae.zip"
dl "ffightae_cps2_gfx.zip"
dl "ffightae_cps2_smp.zip"
dl "megaman_cps15.zip"
dl "neogeo.zip"
dl "s16mcu_alt.zip"
dl "sf2acc.zip"
dl "sf2acca.zip"
dl "sf2ceea.zip"
dl "sf2rb3.zip"
dl "sf2v004.zip"
dl "sfzch_cps15.zip"
dl "pollen_angel.zip"

#special_echo "Downloading missing neogeo mame roms"
neo "2020bb.zip"
neo "3countb.zip"
neo "alpham2.zip"
neo "androdun.zip"

neo "aodk.zip"
neo "aof.zip"
neo "aof2.zip"
neo "aof3.zip"
neo "b2b.zip"
neo "bakatono.zip"
neo "bangbead.zip"
neo "bjourney.zip"
neo "blazstar.zip"
neo "breakers.zip"
neo "breakrev.zip"
neo "bstars.zip"
neo "bstars2.zip"
neo "burningf.zip"
neo "Cabalng.zip"
neo "crsword.zip"
neo "crswd2bl.zip"
neo "ctomaday.zip"
neo "cyberlip.zip"
neo "diggerma.zip"
neo "doubledr.zip"
neo "dragonsh.zip"
neo "eightman.zip"
neo "fatfury1.zip"
neo "fatfury2.zip"
neo "fatfury3.zip"
neo "fatfursp.zip"
neo "fbfrenzy.zip"
neo "fightfev.zip"
neo "flipshot.zip"
neo "froman2b.zip"
neo "galaxyfg.zip"
neo "ganryu.zip"
neo "garou.zip"
neo "ghostlop.zip"
neo "gpilots.zip"
neo "goalx3.zip"
neo "gowcaizr.zip"
neo "gururin.zip"
neo "ironclad.zip"
neo "irrmaze.zip"
neo "janshin.zip"
neo "joyjoy.zip"
neo "kabukikl.zip"
neo "karnovr.zip"
neo "kizuna.zip"
neo "kof2000.zip"
neo "kof2001.zip"
neo "kof2002.zip"
neo "kof2003.zip"
neo "kof94.zip"
neo "kof95.zip"
neo "kof96.zip"
neo "kof97.zip"
neo "kof98.zip"
neo "kof99.zip"
neo "kotm.zip"
neo "kotm2.zip"
neo "lastblad.zip"
neo "lastbld2.zip"
neo "lasthope.zip"
neo "lbowling.zip"
neo "legendos.zip"
neo "lresort.zip"
neo "magdrop2.zip"
neo "magdrop3.zip"
neo "maglord.zip"
neo "matrim.zip"
neo "miexchng.zip"
neo "moshougi.zip"
neo "mslug.zip"
neo "mslug2.zip"
neo "mslug2t.zip"
neo "mslug3.zip"
neo "mslug4.zip"
neo "mslug5.zip"
neo "mslugx.zip"
neo "mutnat.zip"
neo "nam1975.zip"
neo "ncombat.zip"
neo "ncommand.zip"
neo "neobombe.zip"
neo "neocup98.zip"
neo "neodrift.zip"
neo "neomrdo.zip"
neo "neothund.zip"
neo "ninjamas.zip"
neo "nitd.zip"
neo "overtop.zip"
neo "panicbom.zip"
neo "pbobbl2n.zip"
neo "pbobblen.zip"
neo "pgoal.zip"
neo "pnyaa.zip"
neo "popbounc.zip"
neo "preisle2.zip"
neo "pspikes2.zip"
neo "pulstar.zip"
neo "puzzldpr.zip"
neo "puzzledp.zip"
neo "quizdai2.zip"
neo "quizdais.zip"
neo "quizdask.zip"
neo "quizkof.zip"
neo "quizkofk.zip"
neo "ragnagrd.zip"
neo "rbff1a.zip"
neo "rbff2.zip"
neo "rbffspec.zip"
neo "ridhero.zip"
neo "roboarmy.zip"
neo "rotd.zip"
neo "s1945p.zip"
neo "samsho.zip"
neo "samsho2.zip"
neo "samsho3.zip"
neo "samsho4.zip"
neo "samsho4k.zip"
neo "samsho5.zip"
neo "samsh5pf.zip"
neo "samsh5sp.zip"
neo "savagere.zip"
neo "sbp.zip"
neo "sdodgeb.zip"
neo "sengoku.zip"
neo "sengoku2.zip"
neo "sengoku3.zip"
neo "shocktr2.zip"
neo "shocktro.zip"
neo "socbrawl.zip"
neo "sonicwi2.zip"
neo "sonicwi3.zip"
neo "spinmast.zip"
neo "ssideki.zip"
neo "ssideki2.zip"
neo "ssideki3.zip"
neo "ssideki4.zip"
neo "stakwin.zip"
neo "stakwin2.zip"
neo "strhoop.zip"
neo "superspy.zip"
neo "svc.zip"
neo "teot.zip"
neo "tophuntr.zip"
neo "totc.zip"
neo "tpgolf.zip"
neo "trally.zip"
neo "turfmast.zip"
neo "twinspri.zip"
neo "tws96.zip"
neo "viewpoin.zip"
neo "wakuwak7.zip"
neo "wh1.zip"
neo "wh2.zip"
neo "wh2j.zip"
neo "whp.zip"
neo "wjammers.zip"
neo "zedblade.zip"
neo "zintrckb.zip"
neo "zupapa.zip"

cd /media/fat
rm -r "$TEMP"

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${GREEN}${CHECK}${NC} Completed"
