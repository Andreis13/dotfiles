#!/bin/sh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ~/dotfiles/.dircolors ~/.dircolors
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/zsh_themes/robbyrussell_with_host.zsh-theme ~/.oh-my-zsh/custom/themes/robbyrussell_with_host.zsh-theme


# if executing on a MacOS machine
if [[ $OSTYPE == 'darwin'* ]]; then
  # Specify iTerm2 the preferences directory
  defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
  defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

  # Change screenshot directory
  mkdir -p ~/Desktop/Screenshots
  defaults write com.apple.screencapture location ~/Desktop/Screenshots

  # Move Karabiner-Elements config
  mkdir -p ~/.config/karabiner
  cp ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/
fi
