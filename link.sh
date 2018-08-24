#!/bin/sh

mkdir ~/.config/termite/

rm ~/.i3blocks.conf
rm ~/.config/i3/config
rm ~/.Xdefaults
rm ~/.Xresources
rm ~/.xinitrc
rm ~/.xsessionrc
rm ~/.zshrc
rm ~/.compton.conf
rm ~/.config/termite/config

ln -s ~/.dotfiles/i3blocks ~/.i3blocks.conf
ln -s ~/.dotfiles/i3config ~/.config/i3/config
ln -s ~/.dotfiles/Xdefaults ~/.Xdefaults
ln -s ~/.dotfiles/Xresources ~/.Xresources
ln -s ~/.dotfiles/xinitrc ~/.xinitrc
ln -s ~/.dotfiles/xsessionrc ~/.xsessionrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/compton ~/.compton.conf
ln -s ~/.dotfiles/termite ~/.config/termite/config

TODO: link right zshrc_add to ~/.zshrc_add
TODO: link right theme to ~/.oh-my-zsh/custom/themes/bullet-train-custom.zsh-theme

