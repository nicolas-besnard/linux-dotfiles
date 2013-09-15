sudo apt-get install apache2 -y
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql -y
sudo mysql_install_db
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
apt-get install dnsmasq -y
sudo a2enmod vhost_alias
sudo apt-get install phpmyadmin -y
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf.d/phpmyadmin.conf
sudo service apache2 restart