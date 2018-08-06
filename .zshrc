# Path to your oh-my-zsh installation.
export ZSH=/Users/segfault42/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# #GO ENV
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
export PATH="$PATH:/usr/local/Cellar/yarn/1.7.0/bin"


export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC

alias vi="nvim"
alias ls_rss="krill -s http://www.logic-sunrise.com/forums/rss/forums/1-news-fr/"

cat ~/.ascii_segfault
