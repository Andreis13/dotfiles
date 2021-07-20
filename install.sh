#!/bin/sh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ~/dotfiles/.dircolors ~/.dircolors
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/zsh_themes/robbyrussell_with_host.zsh-theme ~/.oh-my-zsh/custom/themes/robbyrussell_with_host.zsh-theme
