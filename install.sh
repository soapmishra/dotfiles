#!/usr/bin/bash

echo installing required packages
sudo pacman -S --needed $(cat ./pacman_packages)

echo linking rc
ln $PWD/rc $HOME/.rc_soap

echo activating .rc_soap in zshrc
head -n -1 /usr/share/oh-my-zsh/zshrc | tee $HOME/.zshrc
echo "source $HOME/.rc_soap" >> $HOME/.zshrc
tail -n 1 /usr/share/oh-my-zsh/zshrc | tee -a $HOME/.zshrc

echo Changing default shell to zsh
sudo chsh $USER -s /usr/bin/zsh
