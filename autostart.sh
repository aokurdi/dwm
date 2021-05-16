#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

run "dex $HOME/.config/autostart/arcolinux-welcome-app.desktop"
run "nm-applet"
run "pamac-tray"
run "variety"
run "xfce4-power-manager"
run "blueberry-tray"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/dwm/picom.conf &
run "numlockx on"
run "volumeicon"
run slstatus &
sxhkd -c ~/.config/arco-dwm/sxhkd/sxhkdrc &

#you can set wallpapers in themes as well
feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &

#run "telegram-desktop"
