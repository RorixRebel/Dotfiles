#!/usr/bin/fish
# i3
rsync ~/dotfiles/i3/config ~/.config/i3/config 
echo "I3 in sync"

# vimrc
rsync ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim 
echo "Nvim in sync"

# termite
rsync ~/dotfiles/termite/config ~/.config/termite/config 
echo "Termite in Sync"

# ranger
rsync  ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
echo "ranger in sync"

# fish
rsync ~/dotfiles/fish/ ~/.config/fish/
