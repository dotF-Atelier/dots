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
PROMPT="%(?.%F{white} .%F{red} )%f %B%F{240}%1~%f%b "
RPROMPT='%(?.%F .%F{red} %?)'


# auto completion
autoload -U compinit&& compinit
_comp_options+=(globdots) # With hidden files
source $ZDOTDIR/plugin/completion.zsh

bindkey -e
source /usr/share/fzf/key-bindings.zsh

my-backward-delete-word() {
    local WORDCHARS=${WORDCHARS/\//}
    zle backward-delete-word
}

zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word
source $ZDOTDIR/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh

function precmd() {
    # Print a newline before the prompt, unless it's the first prompt in the process.
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo
    fi
}
