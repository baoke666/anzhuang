yum -y install kernel-headers kernel-devel openssl-devel popt-devel
tar -xvf  /soft/keepalived-1.1.20.tar.gz 
/soft/keepalived-1.1.20/configure --prefix=/ 
make && make install
echo  > /etc/keepalived/keepalived.conf
cat /test/1.txt > /etc/keepalived/keepalived.conf
service keepalived start


