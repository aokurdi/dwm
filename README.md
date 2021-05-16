# dwm:   

### _The Suckless_ Dynamic Window Manager  

DWM is simply a window manager for programmers by programmers, it is truly a suckless wm and the best!  
Tha main feature of this window manager is that it's _not user friendly wm ;))_.  
If you don't know c language, _don't_ waste your time! go and grab another wm that is more user friendly;  
On the other hand, if you are good in c you'll fall in love with this window manager.  

This is my modifications on the dwm, it is based of the version of [Arco Linux](https://arcolinux.com), the original dwm 6.2 can be found at [Suckless Org](https://dwm.suckless.org) .  

### Applied patches:
* dwm-aplhasystray.  
* dwm-autostart.  
* dwm-center.  
* dwm-r1615-selfstart.  
* dwm-cyclelayouts.  
* dwm-shiftview.  
* dwm-fullgaps.  
* dwm-gridmode.  
* dwm-viewontag.  
* dwm-switchtotag.
* dwm-alternativetag.  
* dwm-rotateinplace.  
* dwm-pango.  

### Installation
    To install run the build script  
    % ./build.sh  

#### NOTE:  
My default terminal is kitty, if you prefer another terminal, chage line 99 in shxkdrc file or if you have st you can launch it with Ctrl + Alt + t.  
I am using slstatus to display status, you can find my version in my repo; it is stripped down and i removed all bsd code cause i am on linux.  

### My Mods:  
* Added gaps around bar "The patch on Suckless site doesn't work", you can adjust the gaps in config.def.h file by changing the value of ypad and xpad.  
* Added bar height adjustments, can be changed in config.def.h by changing barheight value.  
* Systray can now be toggled with Super + s.  
* Active tag has a red underline.  
* Modifed and added more color scheme.
* You can choose to install arcolinux logout when running build.sh or if you don't want that you can logout using Super + Shift + q.    

### TODO:  
* ~~Enable systray togglling.~~  

  
### Dependancies  
* libxft-bgra  (to display emojies and unicode).  
* a monospace nerdfont.  
* Take a look at autostart.sh to see what apps you need to install or change them to your preferd apps.  

### Screen Shots:
#### Tile
___
![tile](https://github.com/aokurdi/dwm/blob/master/screenshots/tile.jpg)    

#### Grid  
![grid](https://github.com/aokurdi/dwm/blob/master/screenshots/grid.jpg)  

#### Status Bar  

![grid](https://github.com/aokurdi/dwm/blob/master/screenshots/bar-with_systray.jpg)

![Without_systray](https://github.com/aokurdi/dwm/blob/master/screenshots/bar.jpg)

  

___

#### Suggestions:

I know the suckless group don't like noob question, but I love noob question :), drop me a line if you need help or have a suggestion.  

Remember: C will give you enough rope to hang your self because it is simply the best programming language ever...
