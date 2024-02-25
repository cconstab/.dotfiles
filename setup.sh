#!/bin/bash
mkdir ~/.zsh
# get ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# get zsh syntax highlighter
zsh -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
# get catppuccin
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git /tmp/catppuccin
cd /tmp/catppuccin/themes/
cp catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.zsh/
#rm -rf /tmp/catppuccin
#
