#!/usr/bin/sh
# vimrc
if [ -d "~/.config/nvim" ]; then
    mkdir ~/.config/nvimg
fi
rsync ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim 
echo "Nvim in sync"

# zsh
rsync ~/dotfiles/zsh/.zshrc ~/.zshrc
echo "zshrc in sync"

# tmux
rsync ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo "tmux in sync"
