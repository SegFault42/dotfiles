# Path to your oh-my-zsh installation.
export ZSH=/home/segfault42/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# #GO ENV
export PATH=$PATH:/usr/local/go/bin:/opt/devkitpro/pacman/bin
export GOPATH=$(go env GOPATH)

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
export DEVKITA64=/opt/devkitpro/devkitA64
export LIBTRANSISTOR_HOME=/opt/libtransistor
export XDG_CONFIG_HOME=/home/segfault42/.config

alias ls_rss="krill -s http://www.logic-sunrise.com/forums/rss/forums/1-news-fr/"
alias vi="nvim"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


cat ~/.ascii_segfault

export XDG_CONFIG_DIRS=$XDG_CONFIG_HOME
alias battery="upower -i $(upower -e | grep '/battery') | grep --color=never -E \"state|to\ full|to\ empty|percentage\""
