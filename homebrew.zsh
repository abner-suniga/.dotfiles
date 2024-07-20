#!/bin/zsh

echo "\nHomebrew setup\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# adding homebrew to my PATH
if ! command -v brew &> /dev/null; then
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/abnersuniga/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "\nHomebrew installing programs\n"

brew install neovim
brew install node
brew install tmux
brew install tree
brew install ctags
brew install fzf
brew install the_silver_searcher
brew install bat ripgrep the_silver_searcher perl universal-ctags
brew install ripgrep 
brew install perl 
brew install universal-ctags
brew install lua-language-server
brew install fsouza/prettierd/prettierd
brew install gh
brew install docker
brew install docker-compose
brew install node
brew install yarn
brew install ngrok/ngrok/ngrok
brew install fd

brew install --cask iterm2
brew install --cask spotify
brew install --cask rectangle
brew install --cask slack
brew install --cask dbeaver-community




