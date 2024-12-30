(1) Install Maria DB directly on Raspberry PI:
----------------------------------------------
sudo apt update
sudo apt upgrade
sudo apt-get install mariadb-server

sudo systemctl stop mysql



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
