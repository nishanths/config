.PHONY: sync
sync: mkdir
	# bash
	cp ${HOME}/.bash_profile               bash_profile
	cp ${HOME}/.profile                    profile
	cp ${HOME}/.bashrc                     bashrc
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
	cp ${HOME}/bin/git-prompt.sh           bin/git-prompt.sh
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
	mkdir -p config/sublime-text-3/Packages/User
