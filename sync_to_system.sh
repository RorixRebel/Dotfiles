#!/usr/bin/zsh
# i3
#rsync ~/dotfiles/i3/config ~/.config/i3/config 
#echo "I3 in sync"

# vimrc
rsync ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim 
echo "Nvim in sync"

#zsh
rsync ~/dotfiles/zsh/.zshrc ~/.zshrc
echo "zshrc in sync"
