#!/bin/bash

echo "Install oh my zsh"
git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Change shell to be zsh"
chsh -s /bin/zsh

echo "Install zsh-autosuggestions & zsh-syntax-highlighting plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting