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
**Kernel**: 5.10.62-1-lts<br/>
**Shell**: bash<br/> 
**WM**: qtile (LG3D)<br/> 
**Theme**: Dracula [GTK2], Ant-Dracula [GTK3]<br/> 
**Icons**: Papirus-Light [GTK2/3]<br/> 
**Terminal**: alacritty<br/>
**CPU**: Intel i3-7100U (4) @ 2.400GHz<br/>
**GPU**: Intel HD Graphics 620<br/>
**GPU**: NVIDIA GeForce 920MX<br/>
**Memory**: 2243MiB / 11883MiB<br/>

## Setup
***This section*** is for future me and someone who want to use my configs.

### First Time Setup

`warning:` Run this script only when new machine setup or when new linux installation because this script can break your current configurations.<br/>
Set permission: `chmod +x setup.sh`<br/>
Run setup: `./setup.sh`

### Setup Manually
I recommended directly copy the configurations.
#### Linking
Clone this repo and link files manually. example: `ln -s $PWD/.dotfiles/alacritty/ ~/.config/alacritty`
#### Raw Files
Or download custom raw files and place in correct directory `~/.config` or `home`.<br/>
example what if picom: <br/>
`cd ~/.config && mkdir picom && cd picom`<br/>
download raw file.<br/>
`wget https://raw.githubusercontent.com/yezarniko/dotfiles/main/.config/picom/picom.conf`
#### Copy Directly
Or copy custom configurations.<br/>

### Install Packages
#### Arch
  Install from your package manager.</br>
  `sudo pacman -S alacritty qtil xorg-xinit vim neovim sxhkd dunst starship rofi vifm paru`<br/>
  <br/>picom has a lot of fork and I use jonaburg's one.<br/>`paru picom-jonaburg-git`<br/>


### Install Custom Scripts Dependencies

Install from your package manager.</br>
`sudo pacman -S xorg python3 brightnessctl libxrandr libnotify paru`<br/>
<br/>xidlehook is the same as xautolock but rewrite in Rust. Also i3lock-color is exactly the same as i3lock but I love to have colors.<br/>`paru xidlehook i3lock-color`<br/>


## Appearance
I love to have uniform look in all apps, mainly in terminal and gtk apps.So I mainly use one theme called [dracula](https://draculatheme.com/).
But most qt(kde) apps like virtualbox, qbittorrent and okular are look weired with dracula theme.I used Breeze theme for this apps.
For icons, I mainly used Papirus.

### Gtk and Icons
I use ant-dracula for gtk3 and dracula for gtk2.<br/>
`paru ant-dracula-gtk-theme dracula-gtk-theme papirus-icon-theme`<br/>
Here my configs:  [gtk3](.config/gtk-3.0/settings.ini), [gtk2](https://github.com/yezarniko/dotfiles/blob/main/.gtkrc-2.0)
### Qt(KDE)
If you want to use breeze `sudo pacman -S breeze`.<br/>
Or dracula with kvantum `paru kvantum-qt5 kvantum-theme-materia ant-dracula-kvantum-theme-git`.<br/>

Added these two lines to one of these `~/.bashrc`, `~/.bash_profile`, `~/.xinitrc`.<br/>
`export QT_STYLE_OVERRIDE=Breeze`<br/>
`export QT_QPA_PLATFORMTHEME=qt5ct`<br/>
If you want to use dracula with kvantum engine, replace Breeze with Kvantum. And then run `kvantummanager` and change theme.

### Fonts
The fonts I mostly use are `Roboto` and `mononoki Nerd Font`.
