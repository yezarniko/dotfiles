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

	# Configurations
	rm ~/.config
	ln -s $PWD/.config ~/.config
	ln -s $PWD/.vim ~/.vim
	ln -s $PWD/.vscode ~/.vscode
	ln -s $PWD/.bash_profile ~/.bash_profile
	ln -s $PWD/.bashrc ~/.bashrc
	ln -s $PWD/.gitconfig ~/.gitconfig
	ln -s $PWD/.gtkrc-2.0 ~/.gtkrc-2.0
	ln -s $PWD/.vimrc ~/.vimrc
	ln -s $PWD/.xinitrc ~/.xinitrc

	# Lock Screen Background
	ln -s $PWD/.img/background.png ~/.local/img/background.png

	# Custom Scripts
	ln -s $PWD/.custom_scripts/dis ~/.local/bin
	ln -s $PWD/.custom_scripts/lock ~/.local/bin
	ln -s $PWD/.custom_scripts/autolock ~/.local/bin
	ln -s $PWD/.custom_scripts/battery ~/.local/bin
	ln -s $PWD/.custom_scripts/vol-notify ~/.local/bin
	ln -s $PWD/.custom_scripts/bright-notify ~/.local/bin
	ln -s $PWD/.custom_scripts/toggle-keyboard-layout ~/.local/bin
fi
