(1) Install Maria DB directly on Raspberry PI:
----------------------------------------------
sudo apt update
sudo apt upgrade
sudo apt-get install mariadb-server

sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables --skip-networking &

FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '&pegasus1&';

sudo kill `cat /var/run/mysqld/mysqld.pid`
sudo systemctl stop mysql

CREATE DATABASE beecounterdb DEFAULT CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

(2) Install PHP Admin GUI:
--------------------------
https://websonic.co.uk/blog/build-a-raspberry-pi-web-server-with-apache-php-and-mysql-at-home
sudo apt install php libapache2-mod-php php-mysql -y

sudo nano /var/www/html/info.ph
----
<?php
phpinfo();
?>
----

sudo apt install phpmyadmin -y
(sudo apt-get purge phpmyadmin)

sudo mysql
GRANT SHOW DATABASES ON *.* TO 'phpmyadmin'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost';
GRANT SHOW DATABASES ON *.* TO 'phpmyadmin'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'%';
FLUSH PRIVILEGES;

http://10.0.0.50/phpmyadmin/


https://github.com/MightyDetail/youtube/blob/main/Docker/mariadb/docker-compose.yml

(2) Get existing Maria DB Alpine image (does not work on Raspberry Pi Zero W)
https://blog.codetitans.pl/post/howto-mariadb-in-docker-on-raspberry-pi/
docker run -d --restart unless-stopped --name mariadb -v /mnt/mariadb/data:/var/lib/mysql -v /mnt/mariadb/config:/config -e "MYSQL_ROOT_PASSWORD=SECURE_PASSWORD" -p 3306:3306 linuxserver/mariadb:alpine
docker exec -it mariadb bash
mysql -u root -p
docker logs -f mariadb

(3) Create a new Maria DB image
cd $HOME
mkdir MariaDB
touch docker-compose.yml
