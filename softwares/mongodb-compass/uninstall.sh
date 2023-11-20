#!/bin/bash

sudo rm -f softwares/mongodb-compass/mongodb-compass_1.40.4_amd64.deb

sudo apt update
sudo dpkg --purge mongodb-compass
sudo apt autoremove
