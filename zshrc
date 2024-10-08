export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LANG=en_US.UTF-8

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

export BAT_THEME="gruvbox-dark"

export HOMEBREW_CASK_OPTS="no-quarantine"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  


# Created by `pipx` on 2024-07-30 13:19:22
export PATH="$PATH:/Users/abnersuniga/.local/bin"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
