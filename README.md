# Dotfile

## Showcase:

|[Info](https://s1.ax1x.com/2020/04/11/G7BaFO.png)|[Preview](https://s1.ax1x.com/2020/04/11/G7BdYD.gif)|
|-------|----|
|![pic](https://s1.ax1x.com/2020/04/11/G7BaFO.png)| ![gif](https://s1.ax1x.com/2020/04/11/G7BdYD.gif)

---

## Features

- pure keyboard workflow
- rofi system menu
- polybar

---

## Installation:

install fonts:
* text: [Fantasque](https://github.com/belluzj/fantasque-sans)
* icon: [Font-Awesome](https://fontawesome.com/download)

clone repo and executing script:
> backup before executing the script
```shell
git clone https://github.com/npchitman/dot_files
cd dot_files
sh put.sh
```

---

## Usage

### shortcuts
* full shortcuts list is in [i3config](https://github.com/npchitman/dotfiles/blob/master/config/i3/config)

#### system menu

|key|description|
|------|----|
|Super + d | quick app launcher
|Super + Shift + d | app launcher
|Super + Shift + w | website
|Super + shift + e | power options


#### sound control

* dependencies: [playerctl](https://github.com/altdesktop/playerctl)

|key|description|
|------|----|
|Super + Shift + n/m|prev/next song|
|Super + Alt + p|pause/continue playing|
|Super + Alt + k/j|increase/decrease volume|
|Super + Alt + m|mute/unmute|

#### misc

|key|shortcuts|
|------|----|
|Super + Alt + w|random wallpaper
|Super + a| screenshot

---

## Dependencies
### - config

|application|description|
|------|----|
|[compton](https://github.com/tryone144/compton)| A lightweight compositor for X11 |
|[dunst](https://github.com/dunst-project/dunst)| Lightweight notification daemons
|[i3](https://github.com/Airblader/i3)| i3 tiling window manager
|[polybar](https://github.com/polybar/polybar)| status bars
|[ranger](https://github.com/ranger/ranger)| a tui file manager
|[rofi](https://github.com/davatorium/rofi)|  A window switcher, run dialog and dmenu replacement
|[termite](https://github.com/thestinger/termite)| terminal
|[tilda](https://github.com/lanoxx/tilda)| popup terminal
|[vimiv](https://github.com/karlch/vimiv)| a vim-like image viewer

---

### - emacs

* based on [redguardtoo/emacs.d](https://github.com/redguardtoo/emacs.d)
* custom.el: [overide default setup](https://github.com/redguardtoo/emacs.d#override-default-setup)

---

### - nvim

* based on [thinkvim](https://github.com/npchitman/ThinkVim)
* thinkvim.d: [User Custom](https://github.com/hardcoreplayers/ThinkVim/wiki/Quickstart#user-custom)

---

### - xorg

X config: reference
* [Xresources](https://wiki.archlinux.org/index.php/X_resources)
* [Xinitrc](https://wiki.archlinux.org/index.php/Xinit#xinitrc)
* [Xprofile](https://wiki.archlinux.org/index.php/Xprofile)

---

### - zsh

* zprofile
* zshrc

---

