This document describes how to set up a new computer for my use. It is
intended for computers running Fedora (at time of writing, I'm using Fedora
33).

# Set up SSH key

See [security stack exchange][ssh-keygen] for the best-practice command to
generate a SSH key.

# Install essential programs

The best known method of installation is mentioned.

- ag: dnf, see GitHub, package named the\_silver\_searcher
- fzy: install from [source][fzy], required for vim plugin srstevenson/vim-picker
- gvim: dnf; provides vimx with clipboard and other features
- jq: dnf, see GitHub
- sublime text: dnf, see [website][subl] for instructions
- vim: dnf, package named vim-enhanced on Fedora 32
- xclip: dnf
- rg: dnf, package named ripgrep
- universal-ctags: improvement over exuberant-ctags; this requires a bit of
  work since it's packaged as a snap

  ```
  # install snap, see URL:
  https://snapcraft.io/docs/installing-snapd

  # install universal-ctags from snap, see URL below.
  #
  # make sure to run any additional instructions listed on the page.
  # at time of writing, there is a manual after-install command to allow
  # universal-ctags to access $HOME/.ctags.d/.
  https://snapcraft.io/universal-ctags
  ```

[subl]: https://www.sublimetext.com/docs/3/linux_repositories.html
[ssh-keygen]: https://security.stackexchange.com/a/144044/88514
[fzy]: https://github.com/jhawthorn/fzy

# gnome-terminal colors and profile

https://github.com/aaron-williamson/base16-gnome-terminal

Use color-scripts/base16-gruvbox-dark-hard.sh

Run custom command instead of my shell: /home/nishanthshanmugham/bin/tmux_new

# fish shell colors

In terminal run the function:

```
base16-gruvbox-dark-hard
```
