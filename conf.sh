#!/bin/sh

echo "- Emacs"
cp EMACS/.emacs ~/
cp EMACS/.myemacs ~/
cp -rf EMACS/.emacs.d/ ~/
echo "- Conky"
cp CONKY/.conkyrc ~/
sudo apt-get update
sudo apt-get install valgrind htop conky
sudo apt-get install compizconfig-settings-manager
#sudo apt-get install compiz compiz-core compiz-gnome compiz-plugins compiz-plugins-default compiz-plugins-extra compiz-plugins-main compiz-plugins-main-default compizconfig-backend-gconf compizconfig-settings-manager libcompizconfig0 libdecoration0 python-compizconfig fusion-icon gnome-tweak-tool
echo "- ZSH"
sudo apt-get install ssh zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
ssh-keygen

#sudo cp XUBUNTU/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
chsh -s /bin/zsh

git config --global user.name "cappie013"
git config --global user.email besnard.nicolas@gmail.com
git config --global color.ui true