#!/bin/bash
sudo apt-get update
sudo apt-get -y install python-software-properties python-pip screen
#sudo apt-get purge openjdk* # ELOHEL Java
#sudo add-apt-repository ppa:webupd8team/java # ELOHEL Java
sudo apt-get update
#echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections # ELOHEL Java
#echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections # ELOHEL Java
#sudo apt-get -y install oracle-java7-installer # ELOHEL Java
#sudo apt-get -y install vim git php5-cli php5-mysql php5-mcrypt php5-intl php5-sqlite # ELOHEL PHP
sudo pip install Django
django-admin.py startproject mysite
screen -dmS django-run sh
screen -S django-run -p 0 -X stuff "cd mysite && python manage.py runserver 0.0.0.0:8000
"
sudo chown -R vagrant:vagrant /home/vagrant




