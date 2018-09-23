#!/bin/bash

cp  ~/.zshrc .
cp ~/.vimrc .

/bin/rm -fr ./polybar
cp -fr ~/.config/polybar .

/bin/rm -fr ./i3
cp -fr ~/.config/i3 .

/bin/rm -fr ./mps-youtube
cp -fr ~/.config/mps-youtube .

/bin/rm -fr ./dconf
cp -fr ~/.config/dconf .

/bin/rm -fr ./Wallpapers/*
cp -fr ~/Pictures/* ./Wallpapers/

/bin/rm -fr ./.mpd
cp -fr ~/.mpd .

/bin/rm -fr ./.ncmpcpp
cp -fr ~/.ncmpcpp .

/bin/rm -fr ./Xresources
cp -fr ~/.Xresources .

/bin/rm -fr ./.config/termite
cp -fr ~/.config/termite .

/bin/rm -fr ./.config/redshift/redshift.conf
cp -fr ~/.config/redshift/redshift.conf .

/bin/rm -fr ./.config/dunst
cp -fr ~/.config/dunst .
