#!/bin/bash


echo $PWD

curl https://downloads.mongodb.com/compass/mongodb-compass_1.40.4_amd64.deb --output softwares/mongodb-compass/mongodb-compass_1.40.4_amd64.deb

sudo apt update
sudo dpkg -i softwares/mongodb-compass/mongodb-compass_1.40.4_amd64.deb
sudo apt install -f
