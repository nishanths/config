# User specific environment and startup programs

export PATH=/usr/local/go/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/bin/node/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH

export GOPATH=$HOME/go

export VISUAL='subl -n -w'
export EDITOR='vim'
# https://stackoverflow.com/a/64011263/3309046
export CLOUDSDK_PYTHON=python2
export GPG_TTY=$(tty)

if [ -f ~/.secrets ]; then
    . ~/.secrets
fi

export READINGLIST_HOME=$HOME/src/readinglist
export READINGLIST_ENV="dev"
export READINGLIST_COOKIE_HASH_KEY="BVW7d64WkYQLSs8316fd1MsvqujDoolwYmoJxt4xgijD/CgIq/wp3Z99zN2ashelx98pukiPc++3stjYNOJJLw==" # HMAC
export READINGLIST_COOKIE_BLOCK_KEY="ZP7cM8v4sGgWLRBebd0ZjHI1fb+RDaYgcD/T+1nE/80=" # AES-256
export READINGLIST_MOVIEDB_KEY=$MOVIEDB_V3_API_KEY
export READINGLIST_BOOKS_KEY=$GOOGLEBOOKS_API_KEY
