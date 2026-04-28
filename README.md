## Prerequisites
- Arch Linux installed
- chaotic-aur repository added to pacman
- bash and git installed
- sudo installed and user in sudoers file

## Install to your user account
```bash
git clone https://github.com/soapmishra/dotfiles $HOME/.soap-dotfiles
cd $HOME/.soap-dotfiles
bash ./install.sh
cd ~
```
## Uninstall
### remove the folder
```bash
rm -rf $HOME/.soap-dotfiles
```
### delete the rc and its referencing file
```
rm -rf $HOME/.zshrc $HOME/.rc_soap
```
### uninstall packages
see the [pacman_packages](https://github.com/soapmishra/dotfiles/pacman_packages) file in the repository for a list of packages the install script syncs, uninstall any/all you don't need with
