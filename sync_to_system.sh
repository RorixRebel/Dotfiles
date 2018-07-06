#!/usr/bin/fish
# i3
rsync ~/dotfiles/i3/config ~/.config/i3/config 
echo "I3 in sync"

# userChrome.css
rsync ~/.mozilla/firefox/z8waf5c2.default/chrome/userChrome.css ~/dotfiles/userChrome.css
echo "userChrome in sync"

# vimrc
rsync ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim 
echo "Nvim in sync"

# termite
rsync ~/dotfiles/termite/config ~/.config/termite/config 
echo "Termite in Sync"

# ranger
rsync  ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
echo "ranger in sync"

# neomutt
rsync ~/dotfiles/neomutt/neomuttrc ~/.config/neomutt/neomuttrc 
echo "neomutt in sync"

# fish
rsync ~/dotfiles/fish/ ~/.config/fish/
