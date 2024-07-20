# Dotfiles

This might be one of my longest projects. The goal is to centralize all my dotfiles and make a new system install as easy as possible. 

1. Install xcode: `xcode-select --install`
2. Clone my .dotfiles repo: `git clone https://github.com/abner-suniga/.dotfiles.git`
3. Run install `cd .dotfiles && ./install`

## Manual settings

### NVIM setup

1. Run `:PlugInstall`

### [Docker](https://docs.docker.com/desktop/install/mac-install/)

### Iterm2

#### [Fixing \<option\> + \<arrow-left or right\>](https://apple.stackexchange.com/questions/154292/iterm-going-one-word-backwards-and-forwards)

1. Go to iTerm2 (in the menu bar) > Settings... > Profiles > Keys (not "Preferences... > Keys"!)
2. On current versions (since version 3.4.9): switch to the Key Mappings tab,
3. Press Presets... dropdown button,
4. Select Natural Text Editing.

#### [Install the gruvbox theme](https://github.com/herrbischoff/iterm2-gruvbox)

1. Go to iTerm2 > Settings > Profiles > Colors > Color Presets > Import
2. Import and apply `gruvbox.itermcolors` (change the cursor color, it's too dark)

#### [Install a nerd font](https://www.nerdfonts.com/font-downloads)

1. Search for Fantasque Sans Mono
2. Install it
3. Go to iTerm2 > Settings > Profiles > Text
4. Select the font
