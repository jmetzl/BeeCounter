# => http://simonthepiman.com/how_to_setup_windows_file_server.php

sudo apt-get update
sudo apt-get upgrade
sudo apt-cache search samba
sudo apt-get install samba samba-common samba-common-bin

cd /etc/samba
vi smb.conf
-----
workgroup=WORKGROUP
wins support = yes

#======================= Share Definitions =======================

[apache_webapp]
comment= Apache Web Applications
path=/var/www/html/
browseable=Yes
writable=Yes
only guest=no
create mask=0777
directory mask=0777
public=no

[beecounter_public]
comment= Public drive on BeeCounter
path=$HOME/shares/public
browseable=Yes
writable=Yes
only guest=no
create mask=0777
directory mask=0777
public=yes

-----


sudo mkdir $HOME/shares
sudo mkdir $HOME/shares/public
sudo chown -R root:users $HOME/shares/public
sudo chmod -R ug=rwx,o=rx $HOME/shares/public



sudo useradd –m SambaUser
sudo passwd SambaUser         --- &pegasus1&
sudo smbpasswd -a SambaUser   --- &pegasus1&
sudo smbpasswd -a pi   --- &pegasus1&

-----
sudo /etc/init.d/samba-ad-dc restart

sudo update-rc.d samba-ad-dc defaults

#==============
# Windows
#==============
Netzwerklaufwerk verbinden
Laufwerk: Z:
Ordner:   \\10.0.0.50\apache_webapp

Netzwerklaufwerk verbinden
Laufwerk: Y:
Ordner:   \\10.0.0.50\beecounter_public

