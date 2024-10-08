#!/bin/zsh

if fexists ~/.local/share/nvim/site/autoload/plug.vim; then
  echo "vim plug exists, skipping the install"
else 
  echo "Installing vim plug"
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
