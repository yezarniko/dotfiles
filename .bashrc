# _               _              
#| |__   __ _ ___| |__  _ __ ___ 
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__ 
#|_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Hostname

HOSTNAME=$(hostnamectl | grep -E 'Static hostname: ' | cut -d ' ' -f4)

#PS1

#Foreground text color
#Black	       	 30
#Red		 31
#Green		 32
#Yellow		 33
#Blue		 34
#Purple		 35
#Cyan		 36

#Background color
#Black		 40
#Red		 41
#Green		 42
#Yellow		 43
#Blue		 44
#Purple		 45
#Cyan		 46


PS1='\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\]\[\e[31m\]{\[\e[m\]\w\[\e[31m\]}\[\e[m\]\$ '

#PS1='\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[31m\]_@\[\e[m\]\[\e[36m\]\h\[\[\e[32m\]> \[\e[m\]'

# Alias

# ls
alias ls='exa --color=always --group-directories-first --no-user --no-time --icons -l'
alias uls='/usr/bin/ls'
alias ll='exa -lF --color=always --group-directories-first --no-user --no-time --icons -l'
alias la='exa -Fa --color=always --group-directories-first --no-user --no-time --icons -l'
alias l.='exa -a --color=always --group-directories-first | grep -P "\."'

alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias cp='cp -i'
alias free='free -h'
alias py='/usr/bin/python3'
alias pip='python3 -m pip'
alias hostname='echo $HOSTNAME'

# config file
alias vq='vim ~/.config/qtile/config.py'

# systemd 
alias SS='sudo systemctl'

# adb
alias Sadbss="sudo adb start-server"
alias Sadbks="sudo adb kill-server"

# iwd
alias iwds="iwctl station wlan0 scan"
alias iwdgn="iwctl station wlan0 get-networks"
alias iwdc="iwctl station wlan0 connect"
alias iwdd="iwctl station wlan0 disconnect"
alias iwdsh="iwctl station wlan0 show"

# nvim
alias vim="nvim"
alias nv="nvim"

# fonts-list
alias fonts-list="fc-list"

# vifm
alias vifm="vifmrun"

# config seacher
cfg() { du -a ~/.dotfiles/.config ~/.dotfiles/.Xresources.d | awk '{print $2}' | fzf --tac  | xargs -r nvim ; }
se() { du -a ~/.dotfiles/custom_scripts ~/.dotfiles/dmenu_scripts  | awk '{print $2}' | fzf --tac  | xargs -r nvim ; }


# Vi Mode
set -o vi
set show-mode-in-prompt on


# StarShip
eval "$(starship init bash)"
