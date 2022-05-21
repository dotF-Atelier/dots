setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt NO_EQUALS
setopt PROMPT_SUBST
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# aliases
source $ZDOTDIR/aliases.zsh

shpwd() {
    echo ${${:-/${(j:/:)${(M)${(s:/:)${(D)PWD:h}}#(|.)[^.]}}/${PWD:t}}//\/~/\~}
}
# prompt
PROMPT="%(?.%F{white} .%F{red} )%f %B%F{240}%1~%f%b "
# PROMPT="%(?.%F{white} .%F{red} )%f %B%F{240}$(shpwd)%f%b  "
RPROMPT='%(?.%F .%F{red} %?)'
# kPROMPT='%n@%m:%{$()%}%# '

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

# vterm scroll back
if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    alias clear='vterm_printf "51;Evterm-clear-scrollback";tput clear'
fi

function precmd() {
    # Print a newline before the prompt, unless it's the first prompt in the process.
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo
    fi
}
