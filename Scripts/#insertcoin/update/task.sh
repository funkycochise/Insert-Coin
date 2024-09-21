#!/bin/bash
export LANG=C.UTF-8
source ../folders/functions.sh

clear
echo -n "                            doing thing 1..."
sleep 1
echo -e "                            \\r${GREEN}${CHECK}${NC} thing 1 done"
echo -n "                            doing thing 2..."
sleep 1
echo -e "                            \\r${GREEN}${CROSS}${NC} thing 2 done"

