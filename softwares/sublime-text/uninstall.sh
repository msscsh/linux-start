#!/bin/bash

yes | sudo apt purge --auto-remove sublime-text
sudo rm -fr /etc/apt/sources.list.d/sublime-text.list
sudo rm -fr /etc/apt/keyrings/sublimehq-archive-keyring.gpg