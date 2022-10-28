apt -y update
apt install -y curl wget apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update -y
apt install -y docker-ce
systemctl status docker
vim /etc/docker/daemon.json
# Step 5: 添加一个配置文件
#Docker 在默认情况下使用Vgroup Driver为cgroupfs，而Kubernetes推荐使用systemd来替代cgroupfs
mkdir -p /etc/docker
cat <<EOF> /etc/docker/daemon.json
{
    "exec-opts": ["native.cgroupdriver=systemd"],
    "registry-mirrors":[
        "http://hub-mirror.c.163.com",
        "https://registry.docker-cn.com",
        "https://docker.mirrors.ustc.edu.cn"
    ]
}
EOF
systemctl restart docker
