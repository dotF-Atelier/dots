# environment variables
#
## xdg base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

## text editor
export EDITOR="nvim"
export VISUAL="nvim"

## profile
export MYPROFILE="$HOME/.myprofile"

## path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$MYPROFILE/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

## zsh 
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export TERMINAL="alacritty"                   # Maximum events in history file

# X11
export MYXPATH="$XDG_CONFIG_HOME/X11"
export MYXINITRC="$MYXPATH/xinitrc"

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# ps ca | grep xinit > /dev/null
# if [ $? -ne 0 ]; then
#  startx ~/.config/X11/xinitrc
# fi

