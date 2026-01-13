#!/bin/bash

#clear
cd /media/fat/Scripts/#insertcoin
python setup.py
./run.sh | tee output.log
