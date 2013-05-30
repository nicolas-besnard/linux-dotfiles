#!/bin/sh

sudo apt-get update
sudo apt-get install emacs
sh emacs.sh
sudo apt-get install valgrind htop
sudo apt-get install compizconfig-settings-manager

# Compiz XFCE
#sudo apt-get install compiz compiz-core compiz-gnome compiz-plugins compiz-plugins-default compiz-plugins-extra compiz-plugins-main compiz-plugins-main-default compizconfig-backend-gconf compizconfig-settings-manager libcompizconfig0 libdecoration0 python-compizconfig fusion-icon gnome-tweak-tool

# Shortcut XFCE
#sudo cp XUBUNTU/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

# ZSH
sudo apt-get install ssh zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh
cp ZSH/.zshrc ~/
cp ZSH/robbyrussell.zsh-theme  ~/.oh-my-zsh/themes/robbyrussell.zsh-theme

# GIT
cp .gitconfig ~/