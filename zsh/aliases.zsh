#!/usr/bin/env bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Prompt if overwriting
alias cp='cp -i'
alias mv='mv -i'

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"

if type exa > /dev/null 2>&1; then
  alias ll='exa -alF --icons --color=always --group-directories-first'
  alias llt='exa -alF --icons --color=always -s=mod --reverse'
else
  # List all files colorized in long format
  alias l="ls -lF ${colorflag}"
  # List all files colorized in long format, excluding . and ..
  alias la="ls -lAF ${colorflag}"
  # List only directories
  alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
  # Always use color output for `ls`
  alias ls="command ls ${colorflag}"
fi

if type bat > /dev/null 2>&1; then
  alias cat="bat"
fi

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Update all Git Repositorys 3 Folders deep
alias git-pull-all="find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull"

# Enable aliases to be sudo’ed
alias sudo='sudo '
alias python='python3'
alias pip='pip3'

#Rustscan
alias rustscan='sudo docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'

# Start TryHAckMe OpenVPN
alias thm='sudo openvpn --config ${HOME}/TOCS/THM/vpn/TechOnlyCoding.ovpn --daemon'

#------------------------------------------------------------------------------
# IP ADDRESSES
#------------------------------------------------------------------------------
if [[ `uname` == 'Linux' ]]; then
  alias myip="ip a s | grep eth0"
  alias thmip="ip a s | grep tun0"
elif [[ `uname` == 'Darwin' ]]; then
  alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
fi

# ReconFTW Docker alias
alias reconftw= "docker run -d -v $PWD/reconftw.cfg:/root/Tools/reconftw/reconftw.cfg -v $PWD/Recon/:/root/Tools/reconftw/Recon/ --name reconftwSCAN --rm six2dez/reconftw:main"

# Switch to TOCS iCloud Folder
alias macTOCS="/Users/tech/Library/Mobile\ Documents/com~apple~CloudDocs/TOCS"
