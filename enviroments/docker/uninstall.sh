#!/bin/bash

docker kill $(docker ps -q)
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -aq)
docker volume rm $(docker volume ls -q)

sudo systemctl stop docker
sudo systemctl disable docker
sudo systemctl disable docker.service
sudo systemctl disable containerd.service

yes | sudo apt remove containerd.io docker-buildx-plugin docker-ce docker-ce-cli docker-ce-rootless-extras docker-compose-plugin podman-docker;
yes | sudo apt autoremove

sudo rm -fr /etc/apt/sources.list.d/docker.list
sudo rm -fr /etc/apt/keyrings/docker.gpg

sudo gpasswd -d $USER docker
sudo groupdel docker

