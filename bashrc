# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

shopt -s direxpand

export PS1='[\W] % '

if [ -f $HOME/bin/git-prompt.sh ]; then
    source $HOME/bin/git-prompt.sh
    export PS1='[\W$(__git_ps1 "|%s")] % '
fi

# bind Ctrl-K to clear (like macOS's Command-K)
bind -x '"\C-k":"clear"'
# use Ctrl-E to erase word (Ctrl-W, the default, is used to close window)
stty werase '^E'

alias vim=vimx
alias docker=podman
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection clipboard -o"
alias open="xdg-open"
