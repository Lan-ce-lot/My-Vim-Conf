
#安装ssh服务
sudo apt-get install openssh-server
#启动ssh服务
sudo /etc/init.d/ssh start
#设置开机自启动
sudo systemctl enable ssh
#关闭ssh开机自动启动命令
#sudo systemctl disable ssh
#单次开启ssh
#sudo systemctl start ssh
#单次关闭ssh
#sudo systemctl stop ssh
#设置好后重启
reboot
