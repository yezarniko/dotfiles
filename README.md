# Dotfiles

## About

**Since the last time I accidentally deleted all my config files**, I started to figure out that these files are very important for me. Unfortunately, at this time my timeshift doesn't backup and i don't know why. For the peoples like me who use lightweight linux system with standalone window manager and custom configurations, reconfigure everythings from scratch isn't easy.<br/>
**So I have decided to backup and version contorl all these files.**<br/>



## Configurations
[Alacritty](.config/alacritty/alacritty.yml) - Terminal<br/>
[Qtile](.config/qtile/config.py) - Window Manager written and configured in Python<br/>
[Xinit](.xinitrc) - X display server<br/>
[Bash](.bashrc) - Bash<br/>
[Vim](.vimrc) - Best Text Editor,IDE<br/>
[Neovim](.config/nvim/init.vim) - An Implementation of Vim<br/>
[Sxhkd](.config/sxhkd/sxhkdrc) - Keybindings Deamon<br/>
[Dunst](.config/dunst/dunstrc) - Lightweight Notifications Daemon<br/>
[Picom](.config/picom/picom.conf) - Standalone Compositor For Xorg<br/>
[Starship](.config/starship.toml) - Shell Prompt<br/>
[Rofi](.config/rofi/config.rasi) - Applications Launcher<br/>
[Vifm](.config/vifm/vifmrc) - Terminal Base Filemanager with Vim keybindings<br/>
[Custom Scripts](.custom_scripts) - My Custom Scripts



## Screenshot
![screenshot1](screenshot.png?raw=true)

## My Current System
**OS**: Arch Linux x86_64<br/>
**Shell**: bash<br/> 
**WM**: qtile (LG3D)<br/> 
**Theme**: Dracula [GTK2], Ant-Dracula [GTK3]<br/> 
**Icons**: Papirus-Light [GTK2/3]<br/> 
**Terminal**: alacritty<br/>

## Setup

### Install Packages
  Install from your package manager.</br>
  `sudo pacman -S alacritty qtil xorg-xinit vim neovim sxhkd dunst starship rofi vifm paru`<br/>
  <br/>picom has a lot of fork and I use jonaburg's one.<br/>`paru picom-jonaburg-git`<br/>


### Install Custom Scripts Dependencies

Install from your package manager.</br>
`sudo pacman -S xorg python3 brightnessctl libxrandr libnotify paru`<br/>
<br/>xidlehook is the same as xautolock but rewrite in Rust. Also i3lock-color is exactly the same as i3lock but I love to have colors.<br/>`paru xidlehook i3lock-color`<br/>

### First Time Setup

`warning:` Run this script only on new machine setup or when new linux installation because this script can break your current configurations.<br/>
Set permission: `chmod +x setup.sh`<br/>
Run setup: `./setup.sh`

### Setup Manually
Clone this repo and link files manually. example: `ln -s $PWD/.dotfiles/alacritty/ ~/.config/alacritty`<br/><br/>
Or download custom raw files and place in correct directory `~/.config` or `home`.<br/>
example what if install picom: <br/>
`cd ~/.config && mkdir picom`<br/>
download raw file.<br/>
`wget https://raw.githubusercontent.com/yezarniko/dotfiles/main/.config/picom/picom.conf`

Or copy custom configurations.<br/>
