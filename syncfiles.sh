#!/usr/bin/zsh
# Sync dotfiles

# vimrc
rsync ~/.config/nvim/init.vim ~/dotfiles/nvim/init.vim
echo "Nvim in sync"

# zshrc
rsync ~/.zshrc ~/dotfiles/zsh/zshrc
echo "zshrc in sync"


