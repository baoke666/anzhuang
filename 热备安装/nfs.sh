yum install nfs* portmap -y
systemctl stop firewalld
setenforce 0
echo "/test 192.168.11.0/24(insecure,rw,async,no_root_squash)" > /etc/exports
systemctl start rpcbind
systemctl start nfs