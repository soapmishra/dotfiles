#!/usr/bin/bash

echo installing required packages
sudo pacman -Sy --noconfirm  $(cat ./pacman_packages)

echo linking rc
ln -f $PWD/rc $HOME/.rc_soap

echo activating .rc_soap in zshrc
head -n -1 /usr/share/oh-my-zsh/zshrc | tee $HOME/.zshrc
echo "source $HOME/.rc_soap" >> $HOME/.zshrc
echo "# CUSTOMIZATION" >> $HOME/.zshrc
echo "ZSH_THEME=\$ZSH_THEME" >> $HOME/.zshrc
echo "plugins=(\$plugins)" >> $HOME/.zshrc

echo >> $HOME/.zshrc
echo "# OH-MY-ZSH CALL" >> $HOME/.zshrc
tail -n 1 /usr/share/oh-my-zsh/zshrc | tee -a $HOME/.zshrc

echo Changing default shell to zsh
sudo chsh $USER -s /usr/bin/zsh
