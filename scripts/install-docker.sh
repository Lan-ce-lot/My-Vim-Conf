set -eux
sudo apt-get update

# time sync
sudo cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo apt-get install -y net-tools
snap install go --channel=1.20/stable --classic
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
## 
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
sudo curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -
sudo add-apt-repository "deb [arch=arm64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get -y update
sudo apt-get -y install docker-ce

sudo mkdir -p /etc/docker
sudo cat <<EOF> /etc/docker/daemon.json
{
    "exec-opts": ["native.cgroupdriver=systemd"],
    "registry-mirrors":[
        "http://hub-mirror.c.163.com",
        "https://registry.docker-cn.com",
        "https://docker.mirrors.ustc.edu.cn"
    ]
}
EOF

# Step 6: 启动dokcer
sudo systemctl restart docker
sudo systemctl enable docker
