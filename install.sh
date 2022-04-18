#!/bin/zsh

set -xe


sudo apt-get update
sudo apt-get -y install zsh-autosuggestions zsh-syntax-highlighting jq ripgrep fzf

cp .zshrc $HOME/.zshrc
sudo chsh -s "$(which zsh)" "$(whoami)"
