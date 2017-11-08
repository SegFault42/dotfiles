#!/bin/bash

cp ./.zshrc ~/
cp ./.vimrc ~/

rm -fr ~/.config/polybar
cp -fr ./polybar ~/.config/

rm -fr ~/.config/i3
cp -fr ./i3 ~/.config/

rm -fr ~/.config/mps-youtube
cp -fr ./mps-youtube ~/.config/

rm -fr ~/.config/dconf/
cp -fr ./dconf ~/.config/

rm -fr ~/Pictures/*
cp -fr ./Wallpapers/* ~/Pictures/
