#!/bin/bash
#!!! Only Run This Script On First Setup

RED=`tput setaf 1`
GREEN=`tput setaf 2`
BLUE=`tput setaf 4`
WHITE=`tput setaf 7`

echo "${RED}Warning!!${WHITE}"
echo -e "Run this script only on new linux installation setup"
echo -e "This script can break your current configurations"
echo -ne "Do you want to Setup?${BLUE}(Enter ${RED}Yes${WHITE}/${GREEN}n${BLUE})${WHITE} "
read answer

if [ $answer = "Yes" ]; then
    # Manual Link

	# Configurations
	[ -f ~/.bash_profile ] && rm ~/.bash_profile
	ln -s $PWD/.bash_profile ~/.bash_profile
	echo "ln -s $PWD/.bash_profile ~/.bash_profile"

	[ -f ~/.bashrc ] && rm ~/.bashrc
	ln -s $PWD/.bashrc ~/.bashrc
	echo "ln -s $PWD/.bashrc ~/.bashrc"

	[ -f ~/.gitconfig ] && rm ~/.gitconfig
	ln -s $PWD/.gitconfig ~/.gitconfig
	echo "ln -s $PWD/.gitconfig ~/.gitconfig"

	[ -f ~/.gtkrc-2.0 ] && rm ~/.gtkrc-2.0
	ln -s $PWD/.gtkrc-2.0 ~/.gtkrc-2.0
	echo "ln -s $PWD/.gtkrc-2.0 ~/.gtkrc-2.0"

	[ -f ~/.vimrc ] && rm ~/.vimrc 	
	ln -s $PWD/.vimrc ~/.vimrc
	echo "ln -s $PWD/.vimrc ~/.vimrc"

	[ -f ~/.xinitrc ] && rm ~/.xinitrc 	 
	ln -s $PWD/.xinitrc ~/.xinitrc
	echo "ln -s $PWD/.xinitrc ~/.xinitrc"

	# Lock Screen Background
	[ -f ~/.local/img/background.png ] && rm ~/.local/img/background.png
	ln -s $PWD/.img/background.png ~/.local/img/background.png
	echo "ln -s $PWD/.img/background.png ~/.local/img/background.png"

	# .config manual configs
	[ -f ~/.config/Code/User/settings.json ] && rm ~/.config/Code/User/settings.json
	ln -s $PWD/.config/Code/User/settings.json ~/.config/Code/User/settings.json
	echo "ln -s $PWD/.config/Code/User/settings.json ~/.config/Code/User/settings.json"

	[ -d ~/.config/vifm/colors ] && rm ~/.config/vifm/colors -r
	ln -s $PWD/.config/vifm/colors ~/.config/vifm/colors
	echo "ln -s $PWD/.config/vifm/colors ~/.config/vifm/colors"

	[ -d ~/.config/vifm/scripts ] && rm ~/.config/vifm/scripts -r
	ln -s $PWD/.config/vifm/scripts ~/.config/vifm/scripts
	echo "ln -s $PWD/.config/vifm/scripts ~/.config/vifm/scripts"

	[ -f ~/.config/vifm/vifmrc ] && rm ~/.config/vifm/vifmrc
	ln -s $PWD/.config/vifm/vifmrc ~/.config/vifm/vifmrc
	echo "ln -s $PWD/.config/vifm/vifmrc ~/.config/vifm/vifmrc"


   # Auto link
	python3 ./autolink.py

fi
