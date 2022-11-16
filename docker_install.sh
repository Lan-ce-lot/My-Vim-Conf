# !/bin/bash
################################################################################################
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
################################################################################################
# First, update your existing list of packages 
sudo apt update

# Tnstall a few prerequisite packages which let apt use packages over HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add the Docker repository to APT sources
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update your existing list of packages again for the addition to be recognized
sudo apt update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo
apt-cache policy docker-ce

# Finally, install Docker
sudo apt install -y docker-ce

#Docker 在默认情况下使用Vgroup Driver为cgroupfs，而Kubernetes推荐使用systemd来替代cgroupfs
mkdir -p /etc/docker
cat <<EOF> /etc/docker/daemon.json
{
    "exec-opts": ["native.cgroupdriver=systemd"],
    "registry-mirrors":[
        "https://hub-mirror.c.163.com",
        "https://registry.docker-cn.com",
        "https://docker.mirrors.ustc.edu.cn"
    ]
}
EOF

# Docker should now be installed, the daemon started, and the process enabled to start on boot. Check that it’s running
sudo systemctl status docker



