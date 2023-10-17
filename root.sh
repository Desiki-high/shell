# 切换root用户 设置密码 并开放root ssh连接权限

sudo passwd root

su

sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config; 
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config;

sudo systemctl restart ssh

sudo apt install net-tools

ip addr
