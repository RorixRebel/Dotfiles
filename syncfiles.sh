#!/usr/bin/fish
# Sync dotfiles

# i3
rsync ~/.config/i3/config ~/dotfiles/i3/config
echo "I3 in sync"

# vimrc
rsync ~/.config/nvim/init.vim ~/dotfiles/nvim/init.vim
echo "Nvim in sync"

# ranger
rsync ~/.config/ranger/rc.conf ~/dotfiles/ranger/rc.conf
echo "ranger in sync"

# fish
rsync ~/.config/fish/ ~/dotfiles/fish/
echo "fish in sync"

# alacritty
rsync ~/.config/alacritty/alacritty.yml ~/dotfiles/alacritty
echo "alacritty in sync"


