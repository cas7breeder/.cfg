# shellcheck shell=bash
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Disable software flow control (ctrl + s / ctrl + q) if shell is interactive
[[ -t 0 ]] && stty -ixon


# --------------------------------------------------------------------
# ENVIRONMENT

export EDITOR="/usr/bin/nvim"
export VISUAL=$EDITOR

# HIST* variables must be defined before PROMPT_COMMAND
HISTTIMEFORMAT="%F %H:%M "
# In memory
HISTSIZE=50000
# In file
HISTFILESIZE=5000000
HISTCONTROL="ignorespace"
HISTIGNORE="ls:ls -*:ll:pwd:pwd -P:clear:history:git st:git br:vim:vimo"

# Sync history before each prompt
PROMPT_COMMAND='history -a; history -n'"${PROMPT_COMMAND:+; $PROMPT_COMMAND}"
PS1='[\u@\h \W]\$ '


# --------------------------------------------------------------------
# SHELL OPTIONS

# Set vi mode
set -o vi

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will ask the kernel for the terminal size when it regains control
shopt -s checkwinsize

# Enable history appending instead of overwriting when closing the session
shopt -s histappend

# Bash attempts to save all lines of a multiple-line command in the same history entry
shopt -s cmdhist


# --------------------------------------------------------------------
# SOURCES

# Source bash completion if the file is readable; bash-completion may define its own sudo completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
# Enables tab-completion for commands after sudo
complete -cf sudo


# --------------------------------------------------------------------
# OTHER MAGIC

# Grant root permission to open GUI apps on X11 display
#xhost +local:root > /dev/null 2>&1


# --------------------------------------------------------------------
# ALIASES

alias ls='ls --color=auto'
alias ll="ls -Alh"
alias grep='grep --color=auto'
# Confirm before overwriting something
alias cp="cp -i"
# Exclude loop devices - cut snap device spam
alias lsblknl="lsblk -e 7"
# Human-readable sizes, include filesystem type
alias df="df -hT"
# Exclude pseudo filesystems
alias dfreal="df -x squashfs -x devtmpfs -x tmpfs"
# Exclude squashfs: used by snap
alias dfnl="df -x squashfs"
# Human-readable sizes
alias du="du -h"
# Show sizes in MiB
alias free="free -m"

alias config="/usr/bin/git --git-dir=$HOME/work/.cfg --work-tree=$HOME"
alias sshconfig="/usr/bin/git --git-dir=$HOME/work/.ssh --work-tree=$HOME/.ssh"

alias wlc="wl-copy --type text/plain"
alias wlp="wl-paste"

alias dk="docker"
alias dcs="docker compose"
alias dkcpf="docker container prune -f"

# Make vim nvim
alias vim="/usr/bin/nvim"
alias vimo="/usr/bin/nvim -O . ."

alias gu="/usr/bin/gitui"
alias cu="/usr/bin/gitui -d $HOME/.cfg -w $HOME"


# --------------------------------------------------------------------
# GLOBAL FUNCTIONS

vimtmp() { nvim "$(mktemp)"; }

parse_git_branch() {
    git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null
}

# Color test/info function
colors() {
    local fgc bgc vals seq0

    printf "Color escapes are %s\n" '\e[${value};...;${value}m'
    printf "Values 30..37 are \e[33mforeground colors\e[m\n"
    printf "Values 40..47 are \e[43mbackground colors\e[m\n"
    printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

    # foreground colors
    for fgc in {30..37}; do
        # background colors
        for bgc in {40..47}; do
            fgc=${fgc#37} # white
            bgc=${bgc#40} # black

            vals="${fgc:+$fgc;}${bgc}"
            vals=${vals%%;}

            seq0="${vals:+\e[${vals}m}"
            printf "  %-9s" "${seq0:-(default)}"
            printf " ${seq0}TEXT\e[m"
            printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
        done
        echo; echo
    done
}
