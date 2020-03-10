# Path to your oh-my-zsh installation.
export ZSH=/home/segfault42/.oh-my-zsh

ZSH_THEME="amuse"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# GO ENV
export PATH=$PATH:/usr/local/go/bin:/home/segfault42/go/bin:/opt/devkitpro/pacman/bin:$HOME/appImages:/home/segfault42/Documents/flutter/bin
export GOPATH=$HOME/go

# Nintendo switch dev env
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
export DEVKITA64=/opt/devkitpro/devkitA64
export LIBTRANSISTOR_HOME=/opt/libtransistor
export XDG_CONFIG_HOME=/home/segfault42/.config

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
#alias suspend="dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Suspend" boolean:true"
alias suspend="echo mem | sudo tee /sys/power/state"
alias reboot="dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Reboot" boolean:true"
alias cli="sudo ln -sf /lib/systemd/system/multi-user.target /etc/systemd/system/default.target"
alias gui="sudo ln -sf /lib/systemd/system/graphical.target  /etc/systemd/system/default.target"
alias ryujinx="~/Documents/switch/ryujinx/publish/Ryujinx"
alias launch_fbterm='fbterm; export TERM="fbterm"; tmux'
alias figaro_on="sh ~/.screenlayout/figaro_on.sh"
alias figaro_off="sh ~/.screenlayout/figaro_off.sh"

export XDG_CONFIG_DIRS=$XDG_CONFIG_HOME
export TERM=xterm-256color

PATH="/home/segfault42/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/segfault42/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/segfault42/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/segfault42/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/segfault42/perl5"; export PERL_MM_OPT;

rmd () {
  pandoc $1 | lynx -stdin
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
rvm use 2.3.1 --default
