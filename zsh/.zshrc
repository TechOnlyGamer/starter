# .zshrc
ZSH_BASE=$HOME/.zsh # Base directory for ZSH configuration

eval "$(starship init zsh)"

# Load Antigen
source $ZSH_BASE/antigenrc 

# ZSH Plugins
#plugins=(zsh-handy-helpers zsh-pentest web-search quiver nmap)

# Source some extra files
source ~/.zsh/aliases.zsh 
source ~/.zsh/functions.zsh 
source ~/.zsh/path.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/starship.zsh

# if [ -z "$TMUX" ]
# then
#     tmux attach -t TMUX || tmux new -s TMUX
# fi
[ -f ~/.cargo/env ] && source $HOME/.cargo/env
