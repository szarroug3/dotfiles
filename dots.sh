#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#.....................
# Look
#.....................

# xinitrc
ln -s ${BASEDIR}/xinitrc $HOME/.xinitrc

# Xresources
ln -s ${BASEDIR}/Xresources $HOME/.Xresources

# Xresources.d
ln -s ${BASEDIR}/Xresources.d $HOME/.Xresources.d

# i3
ln -s ${BASEDIR}/i3 $HOME/.config/i3

# compton
ln -s ${BASEDIR}/compton.conf $HOME/.config/compton.conf

#.....................
# Terminal
#.....................

# zsh
ln -s ${BASEDIR}/zsh/zprofile $HOME/.zprofile
ln -s ${BASEDIR}/zsh/zshrc $HOME/.zshrc

#.....................
# Apps
#.....................

# vim
ln -s ${BASEDIR}/vim/vimrc $HOME/.vimrc

# bin
ln -s ${BASEDIR}/bin $HOME/bin
