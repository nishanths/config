.PHONY: sync
sync: mkdir
	# git
	cp ${HOME}/.config/git/config          config/git/config
	# vim
	cp ${HOME}/.vimrc                      vimrc
	cp ${HOME}/.gvimrc                     gvimrc
	cp ${HOME}/.vim/colors/ayu_custom.vim  vim/colors/ayu_custom.vim
	# tmux
	cp ${HOME}/.tmux.conf                  tmux.conf
	# bin
	cp ${HOME}/bin/tmux_new                bin/tmux_new
	# fish
	cp ${HOME}/.config/fish/config.fish \
		config/fish/config.fish
	cp ${HOME}/.config/fish/functions/fish_prompt.fish \
		config/fish/functions/fish_prompt.fish
	cp ${HOME}/.config/fish/functions/base16-gruvbox-dark-hard.fish \
		config/fish/functions/base16-gruvbox-dark-hard.fish

.PHONY: mkdir
mkdir:
	mkdir -p vim/colors
	mkdir -p config/git
	mkdir -p bin
	mkdir -p config/fish/functions


