# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nishanthshanmugham/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -f $HOME/bin/git-prompt.sh ]; then
	source $HOME/bin/git-prompt.sh
	setopt PROMPT_SUBST
	export PS1='%c$(__git_ps1 "|%s")$(printf "%.*s%.*s" $? "|" $? $?) %% '
fi

function hard_clear() {
    bak_buff=$BUFFER
    BUFFER="tput reset"
    zle accept-line
    zle -U $bak_buff
}
zle -N hard_clear
bindkey "^k" hard_clear

alias vim=vimx
alias docker=podman
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection clipboard -o"
alias open="xdg-open"
alias o="open"
alias kube="kubectl"
alias subl="/opt/sublime_text/sublime_text"
