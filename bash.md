.bashrc

```sh
shopt -s direxpand

source $HOME/git-prompt.sh
export PS1='[\W$(__git_ps1 "|%s")]\$ '

alias vim=gvim
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection clipboard -o"
alias open="xdg-open"
```

.bash\_profile

```
export VISUAL=gvim
```
