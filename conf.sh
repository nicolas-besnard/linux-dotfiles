#!/bin/sh

sudo apt-get update
sudo apt-get install emacs
sudo apt-get install subversion
sudo apt-get install valgrind htop
sudo apt-get install compizconfig-settings-manager

# ZSH
sudo apt-get install ssh zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh
cp ZSH/.zshrc ~/
cp ZSH/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/

# GIT
cp .gitconfig ~/
cp GNOME-TERMINAL/%gconf.xml ~/.gconf/apps/gnome-terminal/profiles/Default/

sh emacs.sh
sh bin.sh
sh chrome.sh
sh synergy.sh
sh node.sh
sh rails.sh
sh python.sh