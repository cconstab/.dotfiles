#!/bin/bash
which zsh
if [ $? -eq 1 ]
	then
	sudo apt install zsh
fi
        echo "Yay ZSH installed"
mkdir ~/.zsh
which curl
if [ $? -eq 1 ]
	then
	sudo apt install curl
fi
        echo "Yay curl installed"
which python3
if [ $? -eq 1 ]
	then
	sudo apt install python3
fi
        echo "Yay  python3 installed"
# get catppuccin
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git /tmp/catppuccin
cd /tmp/catppuccin/themes/
cp catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.zsh/
cd -
#rm -rf /tmp/catppuccin
#
# get ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# get zsh syntax highlighter and other plugins
mkdir -p ~/.oh-my-zsh/custom/plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# get ready to install
cd -
rm ~/.zshrc
./install
echo "Changing your shell to /bin/zsh"
chsh -s /bin/zsh
echo "logout and enjoy your new shell"


