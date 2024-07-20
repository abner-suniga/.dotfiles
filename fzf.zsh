# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/abnersuniga/.local/share/nvim/plugged/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/abnersuniga/.local/share/nvim/plugged/fzf/bin"
fi

source <(fzf --zsh)
