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
#alias vi="nvim"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


cat ~/.ascii_segfault

export XDG_CONFIG_DIRS=$XDG_CONFIG_HOME

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


export TERM=xterm-256color

function colors(){
for i in {0..255} ; do
    printf "\x1b[38;5;${i}m%3d " "${i}"
    if (( $i == 15 )) || (( $i > 15 )) && (( ($i-15) % 12 == 0 )); then
        echo;
    fi
done
}
