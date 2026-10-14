#
# ~/.bash_profile
#

export EDITOR="/usr/bin/nvim"
export VISUAL=$EDITOR
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc
