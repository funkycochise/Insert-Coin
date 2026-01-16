Insert-Coin script for Mister FPGA

Aims of the projet : 

1. First Main goal is to build a custom folder inside _Arcade Folder. 
This folder is named "_Insert Coin" and contains several Systems and Editors:
![image](https://user-images.githubusercontent.com/29161585/202754827-3752611c-086f-493e-a91a-ae759f3b3fe3.png)

The folder is built according to the existing mra inside _Arcade folder.
So if beta cores are installed manually, they can be recognized if supported.
rndmnkiii, pierco, jotego, raki, coinop collection, wickerwaka

2. Custom Main Mister feature.
Running insertcoin will install a custom Mister will provide the ability to hide rom loading progress bar.
For more details: https://github.com/funkycochise/Main_MiSTer/wiki

3. Additional arcade cores and mras.
Running insertcoin will install additional arcade cores.
In example SEGASYS1/SEGASYS2

3. Download of arcade mame roms.
Running insertcoin will download mame roms and neogeo if they are missing.

4. Update of latest console core version (nightlies)

How to Install:
Insert Coin relies on update_all to perform core, mras and script installation.
In downloader.ini add the following entry :
<br>
`[funkycochise/Insert-Coin]`
<br>
`db_url = https://raw.githubusercontent.com/funkycochise/Insert-Coin/db/db.json.zip`
<br>
<br>
Run update_all : you will notice insert coin in the log.
then run update_all_insertcoin

script will download a default /media/fat/Scripts/#insertcoin/setup.ini 
<br>
you can custimize later for set up how insert-coin script will behave
<br>
script will download a default /media/fat/Scripts/#insertcoin/names.ini
<br>
you can customize folder names 
<br>
py version (january 2026 : involves a python setup/launcher application)
this will allow to configure and run the script easily.
the application will create setup.ini and names.ini if not existing, and update them if necessary,
so your previous setup won't be overwritten anymore.
<br>
![Capture de l'application](https://github.com/funkycochise/Insert-Coin_Res/blob/main/py2.png)

Warning : update_all_insertcoin.sh isn't working when lunnched from analogue output.
therefor, if you have to bypass the GUI, use update_all_insertcoin_legacy.sh instead.



