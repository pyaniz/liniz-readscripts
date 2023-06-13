#!/bin/bash
apt update && apt install wget sudo gnupg -y
echo "deb https://repo.delellis.com.ar bullseye bullseye" > /etc/apt/sources.list.d/20-pdlib.list
wget -qO - https://repo.delellis.com.ar/repo.gpg.key | sudo apt-key add -
apt-get update && apt-get install sudo php7.4-pdlib -y
