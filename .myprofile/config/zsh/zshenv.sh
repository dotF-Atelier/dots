MYPATH="$HOME/.myprofile/bin:$HOME/.local/bin"
export FONTCONFIG_PATH="/etc/fonts"
export EDITOR="nvim"
export PATH="$PATH:$MYPATH"
export BROWSER="google-chrome-stable"
export FMANAGER="ranger"
export READER="zathura"

if command -v urxvt &> /dev/null
then
        export TERMINAL="sakura"
elif command -v st &> /dev/null
then
        export TERMINAL="st"
elif command -v xterm &> /dev/null
then
        export TERMINAL="xterm"
fi

# 暂时使用
#export TERMINAL="sakura"

# 默认目录
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"


export LESSHISTFILE=-
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

