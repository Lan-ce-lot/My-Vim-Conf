#!/usr/bin/env bash

# Install ZSH
#!/usr/bin/bash
# @author: lancel
######################%%%%%%%$##############
# 1. First change source
# 2. Update
sudo apt update
# ?. Install base sofewere
# sudo apt install curl git openssh-server net-tools
# sudo apt install gcc g++
# 3. Install zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
######################%%%%%%%$##############

# System-wise settings
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

cat ./.zshrc >> ~/.zshrc
cp -R ./.config ~/

# Install Python3
sudo apt-get install -y python-dev python-pip python3-dev
sudo apt-get install -y python3-setuptools
sudo easy_install3 pip



# Install neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim


# Install vim setup dependencies
python2 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pynvim
npm install -g neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cargo install bat
cargo install devicon-lookup

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo apt-get install -y silversearcher-ag

# Create ssh key
ssh-keygen -t rsao
