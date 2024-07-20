#!/bin/zsh

if dexists ~/.nvm; then
  echo "nvm exists, skipping the install"
else 
  echo "Installing nvm and node"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  nvm install node
  nvm use node
fi
