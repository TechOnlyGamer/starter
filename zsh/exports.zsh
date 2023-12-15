export TERM=xterm-256color
export EDITOR="/usr/bin/vim"
export GREP_COLOR='3;33'
export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/go
export PATH=~/.emacs.d/bin:$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH
export DOTFILES=${HOME}/.dotfiles
export PATH="$PATH":"$HOME/.pub-cache/bin"
