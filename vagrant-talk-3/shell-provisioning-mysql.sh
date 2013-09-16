#!/bin/bash
sudo apt-get update
sudo apt-get -y install python-software-properties screen
export DEBIAN_FRONTEND=noninteractive
apt-get install -y mysql-server
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
restart mysql
mysql -uroot mysql <<< "GRANT ALL ON *.* TO 'root'@'%'; FLUSH PRIVILEGES;"
