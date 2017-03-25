#!/bin/sh

dir=$(pwd)

rm ~/.i3blocks.conf
rm ~/.config/i3/config
rm ~/.Xdefaults
rm ~/.xinitrc
rm ~/.xsessionrc
rm ~/.zshrc

ln -s "$pwd/i3blocks" ~/.i3blocks.conf
ln -s "$pwd/i3config" ~/.config/i3/config
ln -s "$pwd/Xdefaults" ~/.Xdefaults
ln -s "$pwd/xinitrc" ~/.xinitrc
ln -s "$pwd/xsessionrc" ~/.xsessionrc
ln -s "$pwd/zshrc" ~/.zshrc