# environment variables
#
## xdg base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export XDG_STATE_STATE="$XDG_CONFIG_HOME/local/state"

## text editor
export EDITOR="nvim"
export VISUAL="nvim"

## profile
export MYPROFILE="$HOME/.myprofile"

## path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$MYPROFILE/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

## zsh 
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export TERMINAL="kitty"                   # Maximum events in history file

# X11
export MYXPATH="$XDG_CONFIG_HOME/X11"
export MYXINITRC="$MYXPATH/xinitrc"

# Media
export MYMUSIC="/mnt/ssd1/nfs_export/nfs_data/music"

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export QT_QPA_PLATFORMTHEME="qt5ct"

export BAT_STYLE="plain"
