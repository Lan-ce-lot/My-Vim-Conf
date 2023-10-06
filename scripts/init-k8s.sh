# sudo kubeadm init --config=kubeadm-config.yaml --pod-network-cidr=10.244.0.0/16 \
#   --apiserver-advertise-address=192.168.194.128 --apiserver-bind-port=6443 \
#   --image-repository registry.aliyuncs.com/google_containers \
#   --kubernetes-version=v1.23.6 --service-cidr=10.96.0.0/12
set -eux
sudo pwd
sudo swapoff -a
eth0_ip=$(hostname -I | awk '{print $1}')


sudo kubeadm init --config=/vagrant/yaml/kubeadm-config.yaml

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

sudo kubectl taint nodes --all node-role.kubernetes.io/master-
# sudo kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
sudo kubectl apply -f /vagrant//yaml/kube-flannel.yml
# kubeadm reset
# sudo kubeadm token create --print-join-command



# kubeadm init --apiserver-advertise-address=10.211.55.50 \
# --image-repository=registry.aliyuncs.com/google_containers \
# --service-cidr=10.96.0.0/12 \
# --pod-network-cidr=10.244.0.0/16 \
# --ignore-preflight-errors=all

