https://www.raspberrypi.com/documentation/

Username: pi
Password: &pegasus1&

(1) SSH Connection:
-------------------
ssh pi@10.0.0.50

Update image:
-------------
sudo apt-get update
sudo apt-get upgrade

-----------------------------------------------------------------------

(2) VNC Server:
---------------

https://www.raspberrypi.org/documentation/remote-access/vnc/

sudo apt-get install tightvncserver

tightvncserver
>password: &pegasus1&

cd /etc/init.d/
sudo touch vncboot
sudo chmod 755 vncboot
sudo chown pi:pi vncboot
sudo vi vncboot

-------------------------------------------------------
#! /bin/sh
# /etc/init.d/vncboot

### BEGIN INIT INFO
# Provides: vncboot
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Start VNC Server at boot time
# Description: Start VNC Server at boot time.
### END INIT INFO

USER=pi
HOME=/home/pi

export USER HOME

case "$1" in
 start)
  echo "Starting VNC Server"
  #Insert your favoured settings for a VNC session
  su - $USER -c "/usr/bin/vncserver :1 -geometry 1280x800 -depth 16 -pixelformat rgb565"
  ;;

 stop)
  echo "Stopping VNC Server"
  /usr/bin/vncserver -kill :1
  ;;

 *)
  echo "Usage: /etc/init.d/vncboot {start|stop}"
  exit 1
  ;;
esac

exit 0

-------------------------------------------------------


sudo update-rc.d -f lightdm remove
sudo update-rc.d vncboot defaults

-------------------------------------------------------
Windows:
-------------------------------------------------------
TightVNCViewer
10.0.0.50:5901
&pegasus1&
-----------------------------------------------------------------------

(3) Install Python 3:
---------------------

https://www.hackster.io/sameerk/getting-started-with-raspberry-pi-zero-w-and-python-3-16c274

Uninstall legacy Python:
sudo apt-get update
sudo apt-get remove python
sudo apt autoremove

Install Python 3
sudo apt-get install python3
sudo apt-get install python3-rpi.gpio
sudo apt-get install python3-smbus


(4) Install MotionEye:
----------------------

sudo apt-get install ffmpeg v4l-utils
sudo apt-get install libmariadbclient18 libpq5

wget https://github.com/Motion-Project/motion/releases/download/release-4.1.1/pi_stretch_motion_4.1.1-1_armhf.deb
sudo dpkg -i pi_stretch_motion_4.1.1-1_armhf.deb
apt-get install python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev
------
sudo apt-get install ffmpeg libmariadb3 libpq5 libmicrohttpd12 -y

(5) OpenCV:
-----------

https://opencv.org/

(6) Vagrant:
------------

(7) Ansible:
------------

(8) Docker image - MySQL:
-------------------------
https://medium.com/@yashpatel007/hosting-mysql-database-using-docker-on-raspberrypi-81810cfef63c

sudo apt install docker.io
docker --version

sudo usermod -aG docker pi

(9) Install nginx:
------------------
https://www.linode.com/docs/guides/flask-and-gunicorn-on-ubuntu/

mkdir flask_project
cd flask_project

sudo apt-get install nginx
sudo nano /etc/nginx/sites-enabled/flask_project

----
server {
    listen 80;
    server_name 10.0.0.50;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}
----

sudo unlink /etc/nginx/sites-enabled/default
sudo nginx -s reload

sudo systemctl start nginx
sudo systemctl status nginx
sudo systemctl disable nginx

(11) Install DB:
----------------
sudo apt install python3-flask-sqlalchemy
sudo apt install python3-sqlalchemy
sudo apt install python3-flask-security
sudo apt install python3-flask-wtf

(12) Install gunicorn:
----------------------
sudo apt-get install gunicorn
sudo gunicorn -w 3 flask_app:app


(13) Install Apache Web-server:
------------------------------
sudo apt update
sudo apt upgrade
sudo apt update

sudo chown -R pi:www-data /var/www/html/
sudo chmod -R 770 /var/www/html/

sudo apt install apache2

wget -O check_apache.html http://127.0.0.1
http://10.0.0.50/

/etc/init.d/apache2 stop

(14) Docker image - Tomcat:
--------------------------
https://putridparrot.com/blog/turning-my-raspberry-pi-zero-w-into-a-tomcat-server/

sudo apt install docker.io
docker --version

sudo usermod -aG docker pi

sudo systemctl stop docker
sudo systemctl disable docker


sudo docker pull izone/arm:tomcat
docker run --rm --name Tomcat -h tomcat -e PASS="admin" -p 8080:8080 -ti izone/arm:tomcat
http://10.0.0.50:8080/

(15) Install Pi4J prerequisites:
-------------------------------
sudo apt-get install pigpio

Start pigpio daemon process:
sudo systemctl enable pippiod
sudo systemctl start pigpiod
sudo systemctl status pigpiod

sudo pigpiod -t 2 -l

-t ... set the logging level (
0 ... error
1 ... warning
2 ... debug)

sudo journalctl -u pigpiod
sudo tail -f /var/log/syslog | grep pigpiod

-- Enable detailed logging
sudo vi /lib/systemd/system/pigpiod.service
--
[Service]
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=pigpiod
--
sudo systemctl daemon-reload
sudo systemctl restart pigpiod
--
-- Enable rsyslog
sudo apt update
sudo apt full-upgrade
sudo apt install rsyslog
sudo vi /etc/rsyslog.conf
--
sudo sed -i 's/#$ModLoad imudp/$ModLoad imudp/' /etc/rsyslog.conf
sudo sed -i 's/#$ModLoad imtcp/$ModLoad imtcp/' /etc/rsyslog.conf
--
sudo systemctl restart rsyslog
sudo systemctl status rsyslog


--
(16) Open JDK 17:
-----------------
sudo apt-cache search jdk
sudo apt-get install openjdk-17-jdk
java --version


(17) Maven:
-----------
sudo apt-cache search maven
sudo apt install maven
mvn --version

cd $HOME/shares/public/
git clone https://github.com/jmetzl/BeeCounter
cd '$HOME/shares/public/BeeCounter/Raspberry Pi image/Java/BeeCounterDaemon'

Create FAT Jar via Maven:
mvn clean package assembly:single -DskipTests
Execute Java standalone JAR file
sudo java -jar BeeCounterDaemon-1.0.0-jar-with-dependencies.jar -Dpi4j.debug

(18) Telnet:
-----------
sudo apt-cache search telnet
sudo apt-get install telnet

(19) FQDN access


(20) Keyboard setup (Logitech K810)

sudo systemctl enable bluetooth
sudo systemctl start bluetooth
bluetoothctl show
bluetoothctl
scan on
<click on F1, F2 or F3 on keyboard>
pair 00:1F:20:4D:B9:EE
<enter pi on keyboard>
trust 00:1F:20:4D:B9:EE
connect 00:1F:20:4D:B9:EE
exit

(21) Install Logitech mouse driver M308

lsusb
dmesg | grep -i logitech
sudo rmmod hid_logitech_dj
sudo modprobe hid_logitech_dj