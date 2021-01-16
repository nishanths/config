SUBL_PACKAGES_USER := sublime-text-3/Packages/User

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
	cp "${HOME}/.config/$(SUBL_PACKAGES_USER)/Default (Linux).sublime-keymap" \
		"config/$(SUBL_PACKAGES_USER)/Default (Linux).sublime-keymap"
	cp "${HOME}/.config/$(SUBL_PACKAGES_USER)/Preferences.sublime-settings" \
		"config/$(SUBL_PACKAGES_USER)/Preferences.sublime-settings"
	# sublime packages
	cp "${HOME}/.config/$(SUBL_PACKAGES_USER)/Gofmt.sublime-settings" \
		"config/$(SUBL_PACKAGES_USER)/Gofmt.sublime-settings"
	cp "${HOME}/.config/$(SUBL_PACKAGES_USER)/LSP.sublime-settings" \
		"config/$(SUBL_PACKAGES_USER)/LSP.sublime-settings"
	cp "${HOME}/.config/$(SUBL_PACKAGES_USER)/RustFmt.sublime-settings" \
		"config/$(SUBL_PACKAGES_USER)/RustFmt.sublime-settings"
	cp "${HOME}/.config/$(SUBL_PACKAGES_USER)/RustEnhanced.sublime-settings" \
		"config/$(SUBL_PACKAGES_USER)/RustEnhanced.sublime-settings"

.PHONY: mkdir
mkdir:
	mkdir -p vim/colors
	mkdir -p config/git
	mkdir -p bin
	mkdir -p config/$(SUBL_PACKAGES_USER)
