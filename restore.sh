#!/bin/bash

cp ./.zshrc ~/
cp ./.vimrc ~/

/bin/rm -fr ~/.config/polybar
cp -fr ./polybar ~/.config/

/bin/rm -fr ~/.config/i3
cp -fr ./i3 ~/.config/

/bin/rm -fr ~/.config/mps-youtube
cp -fr ./mps-youtube ~/.config/

/bin/rm -fr ~/.config/dconf/
cp -fr ./dconf ~/.config/

/bin/rm -fr ~/Pictures/*
cp -fr ./Wallpapers/* ~/Pictures/

/bin/rm -fr ~/.mpd
cp -fr ./.mpd ~/

/bin/rm -fr ~/.ncmpcpp
cp -fr ./.ncmpcpp ~/

/bin/rm -fr ~/.Xresources
cp -fr ./.Xresources ~/

/bin/rm -fr ~/.config/termite
cp -fr ./termite ~/.config/

/bin/rm -fr ~/.config/redshift
cp -fr ./redshift ~/.config/

#/bin/rm -fr ./.tmux.conf
#cp -fr ~/.tmux.conf ~/

cp -fr .ascii_segfault ~/
