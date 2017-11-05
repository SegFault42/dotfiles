#!/bin/bash

sh save.sh

git add .
git commit -m "update"
git push  https://github.com/SegFault42/dotfiles master
