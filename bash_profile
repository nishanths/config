# .bash_profile

# Load .profile
if [ -f ~/.profile ]; then
    . ~/.profile
fi

# Load .bashrc if the shell is interactive.
# https://unix.stackexchange.com/a/88149
if [[ $- == *i* ]]; then
    # Get the aliases and functions
    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi
fi
