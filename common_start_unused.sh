if command -v nvim &> /dev/null
then
    export VISUAL=nvim
else
    export VISUAL=vim
fi

export EDITOR="$VISUAL"

alias v='$EDITOR'
# alias vim='$EDITOR'

alias bashrc='$EDITOR ~/.bashrc'
alias zshrc='$EDITOR ~/.zshrc'
