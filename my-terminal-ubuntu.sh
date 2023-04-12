sudo apt install zsh -y
sudo chsh -s /usr/bin/zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cd ~

# palabra a buscar
pattern1="plugins=([^)]*)"
pattern2='ZSH_THEME="[^"]*"'

# palabra a reemplazar
replace1="plugins=(git zsh-autosuggestions zsh-syntax-highlighting)"
replace2='ZSH_THEME="kennethreitz"'

# buscar y reemplazar texto
sed -i "s/$pattern1/$replace1/g" .zshrc
echo "Tema Actualizado"

sed -i "s/$pattern2/$replace2/g" .zshrc
echo "Plugins actualizados"

source ~/.zshrc



