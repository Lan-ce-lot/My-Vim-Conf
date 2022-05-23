# My ubuntu 16 Setup

## Create a new user
```bash
adduser --disabled-password <your_username>
usermod -aG sudo <your_username>
su - <your_username>
```
And then update `.ssh/authorized_keys` with your ssh public key.

## Install zsh
```bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
```

## Setup my system
```bash
chmod +x ./lancel_ubuntu_desktop_env.sh
./lancel_ubuntu_desktop_env.sh
```
Follow the prompt and finish installing all softwares.
```bash
source ~/.zshrc
```

## Optional
Open .zshrc and replace the theme with powerlevel10k
