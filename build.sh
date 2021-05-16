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
    echo -e "[${CYN}MSG${RES}] Creating ${HOME}/.config/dwm and syncing files"
    mkdir $HOME/.config/dwm
fi
rsync -rv scripts sxhkd picom.conf autostart.sh ${HOME}/.config/dwm/
chmod +x ${HOME}/.config/dwm/autostart.sh

echo -en "[${CYN}MSG${RES}]${YEL} Do you want to install arcolinux-logout? (Y/N):${RES} "
read confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
rsync -rv arcologoutrc ~/.config/
mv ${HOME}/.config/arcologoutrc ${HOME}/.config/arcologout
sudo rsync -rv arcolinux-logout /usr/local/bin/
sudo chmod +x /usr/local/bin/arcolinux-logout
sudo rsync -rv arcologout /usr/share/
sudo rsync -rv arcologout-themes /usr/share/

echo -e "${GRN}~>ALL Done. ${RES}"
