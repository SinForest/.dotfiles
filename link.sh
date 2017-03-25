#!/bin/sh

rm ~/.i3blocks.conf
rm ~/.config/i3/config
rm ~/.Xdefaults
rm ~/.xinitrc
rm ~/.xsessionrc
rm ~/.zshrc

ln -s .dotfiles/i3blocks ~/.i3blocks.conf
ln -s .dotfiles/i3config ~/.config/i3/config
ln -s .dotfiles/Xdefaults ~/.Xdefaults
ln -s .dotfiles/xinitrc ~/.xinitrc
ln -s .dotfiles/xsessionrc ~/.xsessionrc
ln -s .dotfiles/zshrc ~/.zshrc