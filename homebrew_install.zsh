#!/bin/zsh

 if xexists brew; then
   echo "Command brew exists, skipping the install"
 else 
   echo "Installing brew"
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 fi

 eval "$(/opt/homebrew/bin/brew shellenv)"
 brew bundle --verbose


