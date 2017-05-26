#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#.....................
# Look
#.....................

# xinitrc
ln -sf ${BASEDIR}/xinitrc $HOME/.xinitrc

# Xresources
ln -sf ${BASEDIR}/Xresources $HOME/.Xresources

# Xresources.d
rm -rf $HOME/.Xresources.d
ln -sf ${BASEDIR}/Xresources.d $HOME/.Xresources.d

# i3
mkdir -p $HOME/.config
rm -rf $HOME/.config/i3
ln -sf ${BASEDIR}/i3 $HOME/.config/i3

# compton
ln -sf ${BASEDIR}/compton.conf $HOME/.config/compton.conf

#.....................
# Terminal
#.....................

# zsh
rm -rf $HOME/.oh-my-zsh
ln -sf ${BASEDIR}/zsh/oh-my-zsh $HOME/.oh-my-zsh
ln -sf ${BASEDIR}/zsh/zprofile $HOME/.zprofile
ln -sf ${BASEDIR}/zsh/zshrc $HOME/.zshrc

#.....................
# Apps
#.....................

# vim
ln -sf ${BASEDIR}/vim/vimrc $HOME/.vimrc

# bin
rm -rf $HOME/bin
ln -sf ${BASEDIR}/bin $HOME/bin

#....................
# Linters
#....................

# python
ln -sf ${BASEDIR}/linters/python/flake8 $HOME/.config/flake8
ln -sf ${BASEDIR}/linters/python/pylintrc $HOME/.config/.pylintrc
