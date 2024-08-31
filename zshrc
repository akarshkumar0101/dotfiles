# ---------------------- VARS ----------------------
export DOTFILES=$HOME/dotfiles

# ---------------------- ALIASES ----------------------
alias ls='ls --color'
alias l='ls -lFh'
alias la='ls -lAFh'
alias grep='grep --color'
alias diff='diff --color'
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

# from https://stackoverflow.com/questions/50264491/how-do-i-customize-nvidia-smi-s-output-to-show-pid-username
export gps_command="nvidia-smi && ps -up \`nvidia-smi -q -x | grep pid | sed -e 's/<pid>//g' -e 's/<\/pid>//g' -e 's/^[[:space:]]*//'\`"
alias gps="eval \$gps_command"
alias gtop="watch -n 1 'eval \$gps_command'"  # watch launches subshell, so only sees exported strings, not aliases

# ---------------------- ZSH PROMPT VARIABLE ----------------------
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

# ---------------------- ZSH CONFIG ----------------------
SAVEHIST=10000  # Save most recent n lines
HISTFILE=$HOME/.zsh_history
# setopt share_history # https://askubuntu.com/questions/23630/how-do-you-share-history-between-terminals-in-zsh


# ---------------------- PLUGINS ----------------------
export ZSH=$HOME/.zsh

source $ZSH/plugins/zsh-z/zsh-z.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# From: https://github.com/jeffreytse/zsh-vi-mode/issues/24
zvm_after_init_commands+=('[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh')
source $ZSH/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh


# ---------------------- DEBUGGING ----------------------
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do time $shell -i -c exit; done
}

