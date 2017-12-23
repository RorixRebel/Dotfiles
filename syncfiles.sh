# Sync dotfiles

# i3
rsync ~/.config/i3/config ~/dotfiles/i3/config
echo "I3 in sync"

# zshrc
rsync ~/.zshrc ~/dotfiles/.zshrc
echo "zshrc in sync"

# userChrome.css
rsync ~/.mozilla/firefox/z8waf5c2.default/chrome/userChrome.css ~/dotfiles/userChrome.css
echo "userChrome in sync"

# vimrc
rsync ~/.config/nvim/init.vim ~/dotfiles/nvim/init.vim
echo "Nvim in sync"



