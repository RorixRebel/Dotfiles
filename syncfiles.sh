#!/usr/bin/zsh
# Sync dotfiles

# vimrc
rsync ~/.config/nvim/init.vim ~/dotfiles/nvim/init.vim
echo "Nvim in sync"

# zshrc
rsync ~/.zshrc ~/dotfiles/zsh/.zshrc
rsync ~/.p10k.zsh ~/dotfiles/zsh/.p10k.zsh
echo "zshrc in sync"

# tmux
rsync ~/.tmux.conf  ~/dotfiles/tmux/.tmux.conf
echo "tmux in sync"

# kde
#rsync ~/.config/plasma-workspace/env ~/dotfiles/kde
#echo "kde in sync"

# i3
#rsync ~/.config/i3/config  ~/dotfiles/i3
#echo "i3 in sync"

