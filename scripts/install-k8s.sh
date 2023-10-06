set -eux
# ---
# 1：安装依赖
sudo swapoff -a
sudo apt-get update && apt-get install -y apt-transport-https

# 2: 安装GPG证书
sudo curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | sudo apt-key add - 

# 3：添加源
sudo cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF

# 4：安装kubelet kubeadm kubectl
sudo apt-get update
sudo apt-get install -y kubelet=1.22.6-00 kubeadm=1.22.6-00 kubectl=1.22.6-00

#5：设置kubelet开机自启
sudo systemctl enable kubelet


# sudo sh -c 'echo "alias k=kubectl" >> /root/.bashrc'
# source /root/.bashrc
# make get images don't want first line
# images=(
#    $(kubeadm config images list 2>/dev/null)
# )
# for imageName in ${images[@]};do
# 	sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
# 	sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName $imageName
# 	sudo docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName 
# done
