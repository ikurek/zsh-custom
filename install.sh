echo "==> Enrolling zsh deployment"
echo "    ==> Getting ZSH from repo"

sudo apt update
sudo apt install git curl zsh

echo "    ==> Getting Oh-My-ZSH from curl"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "    ==> Copying custom content"
mkdir ~/.oh-my-zsh/custom/themes/punctual
cp ./files/punctual.zsh-theme ~/.oh-my-zsh/custom/themes/punctual
ln -s ~/.oh-my-zsh/custom/themes/punctual/punctual.zsh-theme ~/.oh-my-zsh/custom/themes
cp ./files/.zshrc ~/.zshrc

echo "==> All done, have a good day!"