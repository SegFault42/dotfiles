# Path to your oh-my-zsh installation.
export ZSH=/home/segfault42/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# GO ENV
export PATH=$PATH:/usr/local/go/bin:/opt/devkitpro/pacman/bin
export GOPATH=$(go env GOPATH)

# Nintendo switch dev env
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
export DEVKITA64=/opt/devkitpro/devkitA64
export LIBTRANSISTOR_HOME=/opt/libtransistor
export XDG_CONFIG_HOME=/home/segfault42/.config

export PAGER=most

# Alias
alias ls_rss="krill -s http://www.logic-sunrise.com/forums/rss/forums/1-news-fr/"
alias vi="nvim"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias battery="upower -i $(upower -e | grep '/battery') | grep --color=never -E \"state|to\ full|to\ empty|percentage\""
alias fusee-launcher="/home/segfault42/Documents/switch/fusee-launcher/fusee-launcher.py /home/segfault42/Documents/switch/Darth_Meteos/ReiNX.bin"
alias infinite-fusee-launcher="while true; do /home/segfault42/Documents/switch/fusee-launcher/fusee-launcher.py /home/segfault42/Documents/switch/Darth_Meteos/ReiNX.bin > /dev/null 2>&1; sleep 1; done&"
alias argon-nx="~/Documents/switch/fusee-launcher/fusee-launcher.py ~/Documents/argon-nx/output/argon-nx.bin"
alias disable_suspend="sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target"
alias enable_suspend="sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target"
alias reload_mouse="sudo modprobe -r psmouse && sudo modprobe psmouse"
alias ip="curl https://ipecho.net/plain"
alias vi="/usr/bin/vim"
alias suspend="dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Suspend" boolean:true"
alias reboot="dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Reboot" boolean:true"
alias cli="sudo ln -sf /lib/systemd/system/multi-user.target /etc/systemd/system/default.target"
alias gui="sudo ln -sf /lib/systemd/system/graphical.target  /etc/systemd/system/default.target"
alias ryujinx="~/Documents/switch/ryujinx/publish/Ryujinx"

cat ~/.ascii_segfault

export XDG_CONFIG_DIRS=$XDG_CONFIG_HOME
export TERM=xterm-256color

alias launch_fbterm='fbterm; export TERM="fbterm"; tmux'

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%H:%M  \UF133  %d.%m.%y}"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='080'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_PYTHON_ICON=""
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon virtualenv ssh root_indicator dir)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs command_execution_time  status)

ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
source /home/segfault42/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
