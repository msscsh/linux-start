# linux-start
A project to assist in creating development environments with VirtualBox and Debian-based distros. To create the project, VirtualBox with Ubuntu was used. Do not use in production environments.

# Features <!-- omit in toc -->

- [First steps](#first-steps)
    - [Install prerequisite packages](#install-prerequisite-packages)
    - [Install and Config Git](#install-and-config-git)
- [Virtual box extra features](#virtual-box-extra-features)
    - [Enable transfer area](#enable-transfer-area)
- [Useful software catalog](#useful-software-catalog)
    - [Sublime Text](#sublime-text)
- [Install enviroments](#install-enviroments)
    - [Rust](#rust)
    - [Node](#node)
- [Create code places](#create-code-places)
    - [Pull any github project](#pull-any-github-project)
    - [Low level languages](#low-level-languages)
    - [High level languages](#high-level-languages)

# First steps
## Install prerequisite packages
```
    #GCC, make, perl, curl, tree, ca-certificates and gnupg
    sudo apt install gcc make perl curl tree ca-certificates gnupg
```

## Install and Config Git
```
    #Installing
    sudo apt install git
```
```
    #Config git user
    git config --global user.email "email@email.com"
    git config --global user.name "username"
```
```
    #Generate GPG key for signed commits
    gpg --default-new-key-algo rsa4096 --gen-key
    gpg --list-secret-keys --keyid-format=long
    gpg --armor --export $GPP_ID_FROM_ABOVE_COMMAND
```
```
    #Bind your public key to your github account
    xdg-open https://github.com/settings/gpg/new
```

## Pull me to help you from now on
```
    mkdir -p ~/dev/
    cd ~/dev/
    git clone https://github.com/msscsh/linux-start.git
```


# Virtual box extra features
## Enable transfer area
  1. start the VM
  2. devices > Insert Guest Additions CD Image
  3. reboot guest
  4. navigate to VBox folder
```
  cd /media/$USER/VBox_GAs_*
```
  5. execute VBox script
```
  sh /media/$USER/VBox_GAs_7.0.6/VBoxLinuxAdditions.run
```
  6. reboot guest


# Useful software catalog
## Sublime Text
  1. Adding source 
```
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo gpg --dearmor -o /usr/share/keyrings/sublimehq-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/sublimehq-archive-keyring.gpg] https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list > /dev/null
  sudo apt update
```
  2. Installing sublime
```
  sudo apt install sublime-text
```


# Install enviroments
## Rust
```
  #Install Rust Enviroment
  sh ./enviroments/rust/install.sh

  #Uninstall Rust Enviroment
  sh ./enviroments/rust/uninstall.sh
```

## Node
```
  #Install Node Enviroment
  sh ./enviroments/node/install.sh

  #Uninstall Node Enviroment
  sh ./enviroments/node/uninstall.sh
```


# Create code places

## Pull any github project
> [!IMPORTANT]\
> To maintain projects, they must follow an organization rule presented below, where projects are grouped by types (any name can be invented, but by convention we use the project type) and within the types folder we have the projects themselves sayings. Then enter "type" and "project_name" when using the scripts below.
```
  sh bin/create-github-project.sh cypress time-machine-in-cypress
```
```
  sh bin/remove-github-project.sh rust rust-project-2
```

## Low level languages
```
  # Create low level project
  sh ./playgrounds/lowlevel/create.sh
```
```
  # Destroy low level project(if you want, at any time)
  sh ./playgrounds/lowlevel/destroy.sh
```

## High level languages
```
  # Create high level project
  sh ./playgrounds/highlevel/create.sh
```
```
  # Destroy high level project(if you want, at any time)
  sh ./playgrounds/highlevel/destroy.sh
```
