#!/bin/bash
command -v brew >/dev/null 2>&1 || { echo >&2 "brew is not installed"; exit 1; }

brew cask install iterm2
brew install fzf

git clone https://github.com/powerline/fonts.git ./fonts
cd fonts && sh ./install.sh
rm -rf fonts

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp -f zsh_profile ~/.zshrc
cp -rf ./themes ~/.oh-my-zsh/custom/
cp -f ./com.googlecode.iterm2.plist ~/Library/Preferences/
chsh -s /bin/zsh
