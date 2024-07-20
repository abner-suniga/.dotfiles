export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

export BAT_THEME="gruvbox-dark"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

