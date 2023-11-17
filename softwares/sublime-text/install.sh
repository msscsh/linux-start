#!/bin/bash


echo $PWD

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/sublimehq-archive-keyring.gpg
sudo chmod a+r /etc/apt/keyrings/sublimehq-archive-keyring.gpg

echo "deb [signed-by=/etc/apt/keyrings/sublimehq-archive-keyring.gpg] https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update
sudo apt install sublime-text
