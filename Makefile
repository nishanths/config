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
	# bin
	cp ${HOME}/bin/git-prompt.sh           bin/git-prompt.sh
	# sublime
	cp "${HOME}/.config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap" \
		"config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap"
	cp "${HOME}/.config/sublime-text-3/Packages/User/Preferences.sublime-settings" \
		"config/sublime-text-3/Packages/User/Preferences.sublime-settings"
	# sublime packages
	cp "${HOME}/.config/sublime-text-3/Packages/User/GoSublime/src/margo/margo.go" \
		"config/sublime-text-3/Packages/User/GoSublime/src/margo/margo.go"

.PHONY: mkdir
mkdir:
	mkdir -p vim/colors
	mkdir -p config/git
	mkdir -p bin
	mkdir -p config/sublime-text-3/Packages/User
	mkdir -p config/sublime-text-3/Packages/User/GoSublime/src/margo
