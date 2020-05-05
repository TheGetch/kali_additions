#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or sudo"
  exit
fi

echo '########################### Installing evil-winrm'
gem install evil-winrm

echo '########################### Installing BloodHound'
cd /opt/
wget https://github.com/BloodHoundAD/BloodHound/releases/download/3.0.3/BloodHound-linux-x64.zip
unzip BloodHound-linux-x64.zip
rm BloodHound-linux-x64.zip

echo '########################### Installing PowerSploit'
cd /opt/
git clone https://github.com/PowerShellMafia/PowerSploit/ -b dev

echo '########################### Installing PEASS'
cd /opt/
wget http://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/archive/master.zip
unzip master.zip
rm master.zip

echo '########################### Installing KeePassXC'
apt install keepassxc
