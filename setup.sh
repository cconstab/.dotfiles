#!/bin/bash
mkdir ~/.zsh
# get catppuccin
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git /tmp/catppuccin
cd /tmp/catppuccin/themes/
cp catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.zsh/
#rm -rf /tmp/catppuccin
#
# get ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# get zsh syntax highlighter
zsh -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
# get ready to install
cd -
rm ~/.zshrc
./install
echo "Changing your shell to /bin/zsh"
chsh -s /bin/zsh
echo "logout and enjoy your new shell"
