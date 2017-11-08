#!/bin/bash

cp  ~/.zshrc .
cp ~/.vimrc .

rm -fr ./polybar
cp -fr ~/.config/polybar .

rm -fr ./i3
cp -fr ~/.config/i3 .

rm -fr ./mps-youtube
cp -fr ~/.config/mps-youtube .

rm -fr ./dconf
cp -fr ~/.config/dconf .

rm -fr ./Wallpapers/*
cp -fr ~/Pictures/* ./Wallpapers/
