sudo apt install zsh -y
sudo chsh -s /usr/bin/zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zshfile = "~/.zshrc"
sed -i 's/robbyrussell/af-magic/g' $zshfile

source ~/.zshrc



