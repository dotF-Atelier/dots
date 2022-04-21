# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
# (cat $ZDOTDIR/sequences &)

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt NO_EQUALS
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# aliases
source $ZDOTDIR/aliases.zsh

# prompt
PROMPT='%(?.%F{green} .%F{red} )%f %B%F{240}%1~%f%b -> '
RPROMPT='%(?.%F .%F{red} %?)'

# auto completion
autoload -U compinit&& compinit
_comp_options+=(globdots) # With hidden files
source $ZDOTDIR/plugin/completion.zsh

# if [[ -z $TMUX ]]; then
#     # Fix issue where tmux creates duplicate path entries.
#     source ~/.zshenv
# fi
# 
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

bindkey -e
# source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

my-backward-delete-word() {
    local WORDCHARS=${WORDCHARS/\//}
    zle backward-delete-word
}

zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word
source $ZDOTDIR/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh

# vterm scroll back
if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    alias clear='vterm_printf "51;Evterm-clear-scrollback";tput clear'
fi


alias luamake=/home/npchitman/build_tmp/lua-language-server/3rd/luamake/luamake

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/npchitman/build_tmp/google-cloud-sdk/path.zsh.inc' ]; then . '/home/npchitman/build_tmp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/npchitman/build_tmp/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/npchitman/build_tmp/google-cloud-sdk/completion.zsh.inc'; fi
