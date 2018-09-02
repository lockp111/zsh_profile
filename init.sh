#!/bin/bash
brew install zsh
brew cask install iterm2

git clone https://github.com/powerline/fonts.git
cd fonts && sh ./install.sh
rm -rf fonts

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp zsh_profile ~/.zshrc
