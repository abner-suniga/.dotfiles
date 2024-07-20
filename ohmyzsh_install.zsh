#!/bin/zsh

if dexists ~/.oh-my-zsh/.git; then
  echo "Oh my zsh exists, skipping the install"
else 
  echo "Installing oh my zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
