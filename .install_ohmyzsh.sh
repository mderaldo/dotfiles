#!/bin/bash

echo "Install oh my zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Change shell to be zsh"
chsh -s /bin/zsh

echo "Install zsh-autosuggestions & zsh-syntax-highlighting & zsh-completitions plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions


echo "Install powerlevel9k theme"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

