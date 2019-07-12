#! /bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install git -y
git clone https://github.com/DanielRLittle/poolmanagersetup.git
cd poolmanagersetup
chmod +x poolmanagerinstall.sh
./poolmanagerinstall.sh
