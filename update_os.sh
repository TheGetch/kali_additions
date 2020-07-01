#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root or sudo"
    exit
fi

echo '########################## apt update'
apt update

echo '########################## apt upgrade'
apt upgrade

echo '########################## apt dist-upgrade'
apt dist-upgrade

echo '########################## apt clean'
apt clean

echo '########################## apt autoremove'
apt autoremove
