#!/bin/env bash
RED='\033[0;31m'
GRN='\033[0;32m'
YEL='\033[0;33m'
CYN='\033[0;36m'
RES='\033[0m'

###### Clean and build ######
echo -e "[${CYN}MSG${RES} Removing old build${RES}"
make clean
echo -e "[${GRN}OK!${RES}] Cleaned\n"

echo -e "[${CYN}MSG${RES}] Removing old config.h${RES}"
echo -e "rm -rf config.h"
rm -rf config.h
echo -e "[${GRN}OK!${RES}] Cleaned\n"

echo -e "[${CYN}MSG${RES}] Compiling ..."
make
if [ $? -eq 0 ]; then
    echo -e "[${GRN}OK!${RES}] Compilation Success\n${YEL}"
    sudo make install
    echo -e "${RES}"
else
    echo -e "[${RED}ERR${RES}] Compilation ${RED}Failed!${RES}, please check errors"
fi

##### Creating/copying a dir in .config #####
if [ ! -d $HOME/.config/arco-dwm ]; then
    echo -e "[${CYN}MSG${RES}] Creating ${HOME}/.config/arco-dwm and syncing files"
    mkdir $HOME/.config/arco-dwm
fi
rsync -rv --exclude '.git' --exclude 'screenshots' --exclude '.cache' --exclude '.gitignore' \
        --exclude 'compile_commands.json' --exclude 'tags' * $HOME/.config/arco-dwm/

echo -e "${GRN}~>ALL Done. ${RES}"
