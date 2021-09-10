# Dotfiles

## About

**Since the last time I accidentally deleted all my config files**, I started to figure out that these files are very important for me. Unfortunately, at this time my timeshift doesn't backup and i don't know why. For the peoples like me who use lightweight linux system with standalone window manager and custom configurations, reconfigure everythings from scratch isn't easy.  
**So I have decided to backup and version contorl all these files.**  



## Configurations
- [Alacritty](.config/alacritty/alacritty.yml) - Terminal  
- [Qtile](.config/qtile/config.py) - Window Manager written and configured in Python  
- [Xinit](.xinitrc) - X display server  
- [Bash](.bashrc) - Bash  
- [Vim](.vimrc) - Best Text Editor,IDE  
- [Neovim](.config/nvim/init.vim) - An Implementation of Vim  
- [Sxhkd](.config/sxhkd/sxhkdrc) - Keybindings Deamon  
- [Dunst](.config/dunst/dunstrc) - Lightweight Notifications Daemon  
- [Picom](.config/picom/picom.conf) - Standalone Compositor For Xorg  
- [Starship](.config/starship.toml) - Shell Prompt  
- [Rofi](.config/rofi/config.rasi) - Applications Launcher  
- [Vifm](.config/vifm/vifmrc) - Terminal Base Filemanager with Vim keybindings  
- [Custom Scripts](.custom_scripts) - My Custom Scripts  



## Screenshot
![screenshot1](screenshot.png?raw=true)

## My Current System
**OS**: Arch Linux x86_64  
**Kernel**: 5.10.62-1-lts  
**Shell**: bash  
**WM**: qtile (LG3D)  
**Theme**: Dracula [GTK2], Ant-Dracula [GTK3]  
**Icons**: Papirus-Light [GTK2/3]  
**Terminal**: alacritty  
**CPU**: Intel i3-7100U (4) @ 2.400GHz  
**GPU**: Intel HD Graphics 620  
**GPU**: NVIDIA GeForce 920MX  
**Memory**: 2243MiB / 11883MiB  

## Setup
***This section*** is for future me and someone who want to use my configs.

### New Linux Installation Setup

>:warning: **warning:** Run this script only when new machine setup or when new linux installation because this script can break your current configurations.

Set permission: `chmod +x setup.sh`  
Run setup: `./setup.sh`  

### Setup Manually
I recommended directly copy the configurations.
#### 1. Linking
Clone this repo and link files manually. example: `ln -s $PWD/.dotfiles/alacritty/ ~/.config/alacritty`
#### 2. Raw Files
Or download custom raw files and place in correct directory `~/.config` or `home`.  
example what if picom:  
`cd ~/.config && mkdir picom && cd picom`  
download raw file.  
`wget https://raw.githubusercontent.com/yezarniko/dotfiles/main/.config/picom/picom.conf`
#### 3. Copy Directly
Or copy custom configurations.  

### Install Packages
#### Arch
  Install from your package manager.  
  `sudo pacman -S alacritty qtil xorg-xinit vim neovim sxhkd dunst starship rofi vifm paru`  
  picom has a lot of fork and I use jonaburg's one.  
  `paru picom-jonaburg-git`  


### Install Custom Scripts Dependencies

Install from your package manager.  
`sudo pacman -S xorg python3 brightnessctl libxrandr libnotify paru`  
xidlehook is the same as xautolock but rewrite in Rust. Also i3lock-color is exactly the same as i3lock but I love to have colors.  
`paru xidlehook i3lock-color`  


## Appearance
I love to have uniform look in all apps, mainly in terminal and gtk apps.So I mainly use one theme called [dracula](https://draculatheme.com/).
But most qt(kde) apps like virtualbox, qbittorrent and okular are look weired with dracula theme.I used Breeze theme for this apps.
For icons, I mainly used Papirus.

### Gtk and Icons
I use ant-dracula for gtk3 and dracula for gtk2.  
`paru ant-dracula-gtk-theme dracula-gtk-theme papirus-icon-theme`  
Here my configs:  [gtk3](.config/gtk-3.0/settings.ini), [gtk2](https://github.com/yezarniko/dotfiles/blob/main/.gtkrc-2.0)
### Qt(KDE)
If you want to use breeze `sudo pacman -S breeze`.  
Or dracula with kvantum `paru kvantum-qt5 kvantum-theme-materia ant-dracula-kvantum-theme-git`.  

Added these two lines to one of these `~/.bashrc`, `~/.bash_profile`, `~/.xinitrc`.  
`export QT_STYLE_OVERRIDE=Breeze`  
`export QT_QPA_PLATFORMTHEME=qt5ct`  

If you want to use dracula with kvantum engine, replace `Breeze` with `Kvantum`. And then run `kvantummanager` and change theme.

### Fonts
The fonts I mostly use are `Roboto` and `mononoki Nerd Font`.

## Wish
Good Luck my dear future me. Happy hacking!
