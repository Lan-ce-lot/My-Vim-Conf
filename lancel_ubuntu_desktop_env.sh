#!/usr/bin/bash
# @author: lancel
######################%%%%%%%$##############
# 1. First change source
# 2. Update
sudo apt update
# ?. Install base sofewere
# sudo apt install curl git openssh-server net-tools

# 3. Install zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
######################%%%%%%%$##############
# System-wise settings
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

cat ./.zshrc >> ~/.zshrc
cp -R ./.config ~/


# 4. Install Python3
sudo apt-get install -y python-dev python-pip python3-dev
sudo apt-get install -y python3-setuptools
sudo easy_install3 pip

# 5. Install Node.js
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
sudo bash n lts
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g n

# 6. Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

# 7. Install redis
sudo apt-get install -y redis-server


# 8. Install java

# 9. Install go


# 10. Install MySQL

# 11. Install Docker & Docker-component

# 12. Install Nginx



