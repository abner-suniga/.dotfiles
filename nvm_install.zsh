#!/bin/zsh

if dexists ~/.nvm; then
  echo "nvm exists, skipping the install"
else 
  echo "Installing nvm and node"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

nvm install node
nvm use node

npm i -g typescript 
npm i -g typescript-language-server
npm i -g vscode-langservers-extracted
