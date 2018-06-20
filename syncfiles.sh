#!/usr/bin/fish
# Sync dotfiles

# i3
rsync ~/.config/i3/config ~/dotfiles/i3/config
echo "I3 in sync"

# userChrome.css
rsync ~/.mozilla/firefox/z8waf5c2.default/chrome/userChrome.css ~/dotfiles/userChrome.css
echo "userChrome in sync"

# vimrc
rsync ~/.config/nvim/init.vim ~/dotfiles/nvim/init.vim
echo "Nvim in sync"

# termite
rsync ~/.config/termite/config ~/dotfiles/termite/config
echo "Termite in Sync"

# ranger
rsync ~/.config/ranger/rc.conf ~/dotfiles/ranger/rc.conf
echo "ranger in sync"

# neomutt
rsync ~/.config/neomutt/neomuttrc ~/dotfiles/neomutt/neomuttrc
echo "neomutt in sync"
