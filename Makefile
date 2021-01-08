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
	cp ${HOME}/.config/fish/functions/fish_user_key_bindings.fish \
		config/fish/functions/fish_user_key_bindings.fish
	# sublime
	cp "${HOME}/.config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap" \
		"config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap"
	cp "${HOME}/.config/sublime-text-3/Packages/User/Preferences.sublime-settings" \
		"config/sublime-text-3/Packages/User/Preferences.sublime-settings"



.PHONY: mkdir
mkdir:
	mkdir -p vim/colors
	mkdir -p config/git
	mkdir -p bin
	mkdir -p config/fish/functions
	mkdir -p config/sublime-text-3/Packages/User
