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

- Colors > uncheck "Use colors from system theme"
- Colors > Built-in schemes > Custom.
  Default color: Text: BDAE91, Background: 1E1E1E.
  Bold color, Cursor color, ... are unchecked.
- Colors > Palette (at bottom) > choose "Solarized".
  Check "Show bold text in bright colors".
- Command > Run custom command instead of my shell:
  /home/nishanthshanmugham/bin/tmux_new

# fish colors

In terminal run:

```
fish_config
```

Then set the theme "Solarized Dark".

# fish user paths

To add a path, in terminal run:

```
set -Ua fish_user_paths /path/to/add
```
