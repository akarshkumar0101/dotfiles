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


# ---------------------- BASH PROMPT VARIABLE ----------------------
# Function to parse the current Git branch in bash
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

# Define color codes for bash
COLOR_DEF='\[\033[0m\]'
COLOR_USR='\[\033[38;5;243m\]'   # Gray
COLOR_DIR='\[\033[38;5;197m\]'   # Pinkish
COLOR_GIT='\[\033[38;5;39m\]'    # Cyan

# Set the PS1 variable for the bash prompt
export PS1="${COLOR_USR}\u @ \h ${COLOR_DIR}\w ${COLOR_GIT}\$(parse_git_branch)${COLOR_DEF} $ "

# ---------------------- BASH CONFIG ----------------------
set -o vi
bind -x '"\C-l": clear -x'


