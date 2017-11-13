
export ZSH=/home/rabougue/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source ~/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions

export PROMPT_START_TAG='0xDEADBEEF -> '
export PROMPT_END_TAG=' <- $'
export PROMPT_START_TAG_COLOR='172'
export PROMPT_END_TAG_COLOR='172'

export PATH=/home/rabougue/bin:/home/rabougue/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/rabougue/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku:/home/rabougue/.vimpkg/bin

alias rm='mv -t /tmp '
#alias ls='exa'

wal -i ~/Pictures/Wallpaper2.png > /dev/null

#neofetch --w3m ~/Pictures/Wallpaper1.png
#
source /home/segfault42/.Sublivim/sublivimrc.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
