SUBL_PACKAGES_USER := sublime-text-3/Packages/User

.PHONY: sync
sync: mkdir
	# bash/zsh
	cp ${HOME}/.bash_profile               bash_profile
	cp ${HOME}/.profile                    profile
	cp ${HOME}/.bashrc                     bashrc
	cp ${HOME}/.zshenv                     zshenv
	cp ${HOME}/.zshrc                      zshrc
	# git
	cp ${HOME}/.config/git/config          config/git/config
	# rsnapshot
	cp ${HOME}/.config/rsnapshot/rsnapshot.conf config/rsnapshot/rsnapshot.conf
	# vim
	cp ${HOME}/.vimrc                      vimrc
	cp ${HOME}/.gvimrc                     gvimrc
	cp ${HOME}/.vim/colors/ayu_custom.vim  vim/colors/ayu_custom.vim
	# bin
	cp ${HOME}/bin/git-prompt.sh           bin/git-prompt.sh
	cp ${HOME}/bin/backup                  bin/backup
	cp ${HOME}/bin/diary                   bin/diary
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
	mkdir -p config/git
	mkdir -p config/rsnapshot
	mkdir -p vim/colors
	mkdir -p bin
	mkdir -p config/$(SUBL_PACKAGES_USER)
