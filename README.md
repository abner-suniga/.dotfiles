# Dotfiles

This might be one of my longest projects. The goal is to centralize all my dotfiles and make a new system install as easy as possible. 

## TO DO

Organize the installation below

```
Vim plug installation
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

install tsserver , lua language server

install a nerd font 

install ohz

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

iterm gruvbox

https://github.com/herrbischoff/iterm2-gruvbox

install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

docker desktop installed manually 
https://docs.docker.com/desktop/install/mac-install/

install eslint server

npm i -g vscode-langservers-extracted

```


## Manual settings

Some settings I don't know how to automate yet

### Iterm2

#### To make <option> + <arrow-left or right> work properly
https://apple.stackexchange.com/questions/154292/iterm-going-one-word-backwards-and-forwards

1. Go to iTerm2 (in the menu bar) > Settings... > Profiles > Keys (not "Preferences... > Keys"!)
2. On current versions (since version 3.4.9): switch to the Key Mappings tab,
3. Press Presets... dropdown button,
4. Select Natural Text Editing.

