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


# 4. Install Python3
sudo apt-get install -y python-dev python-pip python3-dev
sudo apt-get install -y python3-setuptools
sudo easy_install3 pip
# sudo apt install python3-pip

# 5. Install Node.js
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
sudo bash n lts
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g n

# 6. Install yarn
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update && sudo apt install -y yarn

# 7. Install redis
# sudo apt-get install -y redis-server


# 8. Install java

sudo apt update
sudo apt install openjdk-8-jdk
# Red hot
# https://download.oracle.com/otn/java/jdk/8u311-b11/4d5417147a92418ea8b615e228bb6935/jdk-8u311-linux-i586.rpm
# wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
# chmod +x jdk-8u131-linux-x64.rpm
# rpm -ivh jdk-8u131-linux-x64.rpm
# java -version

# # Append in the end of '/etc/profile'
# echo -e '
# \n# Java env\nJAVA_HOME=/usr/java/jdk1.8.0_131\nJRE_HOME=${JAVA_HOME}/jre\nCLASSPATH=$JAVA_HOME/lib/\nPATH=$PATH:$JAVA_HOME/bin\nexport PATH JAVA_HOME JRE_HOME CLASSPATH\nsource /etc/profile\n
# ' >> /etc/profile


# # JAVA_HOME=/usr/local/java/jdk1.8.0_131
# # JRE_HOME=${JAVA_HOME}/jre
# # CLASSPATH=$JAVA_HOME/lib/
# # PATH=$PATH:$JAVA_HOME/bin
# # export PATH JAVA_HOME JRE_HOME CLASSPATH
# # source /etc/profile



# 9. Install go
# apt install golang

# go env -w GO111MODULE=on
# go env -w GOPROXY=https://mirrors.aliyun.com/goproxy/,direct

# 10. Install MySQL

# 11. Install Docker & Docker-component

# 12. Install Nginx



