alias startx="startx $MYXINITRC"
alias vim="nvim"

# +-----+
# | X11 |
# +-----+

alias xpropc='xprop | grep WM_CLASS' # display xprop class

# +----+
# | ls |
# +----+

alias ls='ls --color=auto'
alias lsl='ls -l'
alias ll='ls -lahF'
alias lls='ls -lahFtr'
alias la='ls -A'
alias l='ls -CF'

# +----+
# | cp |
# +----+

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -i'
alias la='ls -alh'


# +------+
# | grep |
# +------+

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# +------+
# | lynx |
# +------+

alias lynx='lynx -vikeys -accept_all_cookies'

alias trans_cn='trans -t zh'

alias cdgr='cd `git rev-parse --show-toplevel`'
alias pq='proxychains -q'
