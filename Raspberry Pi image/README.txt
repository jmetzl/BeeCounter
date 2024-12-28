https://www.raspberrypi.com/documentation/

Username: pi
Password: &pegasus1&

SSH Connection:
---------------
ssh pi@10.0.0.50

Update image:
-------------
sudo apt-get update
sudo apt-get upgrade

-----------------------------------------------------------------------

VNC Server:
-----------

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

