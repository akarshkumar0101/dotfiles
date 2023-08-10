export DOTFILES=$HOME/dotfiles

# ---------------------- PROMPT VARIABLE ----------------------
# From: https://gist.github.com/reinvanoyen/05bcfe95ca9cb5041a4eafd29309ff29
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
# export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '
export PROMPT='${COLOR_USR}%n @ %m ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} » '

# ---------------------- ALIASES ----------------------
alias l='ls -lFh'
alias la='ls -lAFh'
alias grep='grep --color'
alias ta='tmux a'

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias gp='git push'
alias gst='git status'

export EDITOR=vim
export VISUAL=vim

# ---------------------- PLUGINS ----------------------
export ZSH=$HOME/.zsh

source $ZSH/plugins/zsh-z/zsh-z.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# From: https://github.com/jeffreytse/zsh-vi-mode/issues/24
zvm_after_init_commands+=('[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh')
source $ZSH/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh


