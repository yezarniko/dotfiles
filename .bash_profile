#                  __ _ _      
# _ __  _ __ ___  / _(_) | ___ 
#| '_ \| '__/ _ \| |_| | |/ _ \
#| |_) | | | (_) |  _| | |  __/
#| .__/|_|  \___/|_| |_|_|\___|
#|_|                           
#
# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:/home/$USER/.local/bin
force_color_prompt=yes

# sublime_text bug fix
export LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8

# Flutter Bin
export PATH=$PATH:/home/choleburbank/development/flutter/bin

# ADB
export PATH=$PATH:/home/choleburbank/Android/Sdk/platform-tools

# Qt and Plasma applications to kvantum
export QT_STYLE_OVERRIDE=Breeze
export QT_QPA_PLATFORMTHEME=qt5ct

#FZF
export FZF_DEFAULT_OPTS="--layout=reverse --height 50%"


# Start X server
if [[ "$(tty)" = "/dev/tty1" ]]; then
	startx
fi
