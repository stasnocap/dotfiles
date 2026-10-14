# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
# /etc/omarchy.conf is written by omarchy-dev-link. When absent, force the
# package default instead of preserving a stale inherited dev-link value before
# we decide which rc file to source.
if [[ -f /etc/omarchy.conf ]]; then
  source /etc/omarchy.conf
  export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
else
  export OMARCHY_PATH=/usr/share/omarchy
fi
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

# Save each command to ~/.bash_history immediately (herdr shells rarely exit)
__save_history() { history -a; }
starship_precmd_user_func=__save_history

# Ctrl+R: load other panes' history before fzf search
if declare -F __fzf_history__ &> /dev/null; then
  eval "__fzf_history_orig__() $(declare -f __fzf_history__ | tail -n +2)"
  __fzf_history__() { history -n; __fzf_history_orig__; }
fi

bind '"\C-f":"tmux-sessionizer\n"'
. "$HOME/.cargo/env"
