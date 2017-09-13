#!/bin/zsh

ICON=/home/rabougue/Desktop/test.gif
TMPBG=/tmp/bg.png

scrot $TMPBG
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
rm -rf $TMPBG
