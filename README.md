# linux-start
A project to assist in creating development environments with VirtualBox and Debian-based distros. To create the project, VirtualBox with Ubuntu was used. Do not use in production environments.

# Features <!-- omit in toc -->

- [Preparing the VM to receive the project](#preparing-the-vm-to-receive-the-project)
    - [Install prerequisite packages](#install-prerequisite-packages)
    - [Git Config](#git-config)
    - [Pull me to help you from now on](#pull-me-to-help-you-from-now-on)
    - [Execute my basic configuration](#execute-my-basic-configuration)
- [Virtual box extra features](#virtual-box-extra-features)
    - [Enable transfer area](#enable-transfer-area)
    - [Increase video memory](#increase-video-memory)
- [Useful software catalog](#useful-software-catalog)
    - [Sublime Text](#sublime-text)
- [Install enviroments](#install-enviroments)
    - [Rust](#rust)
    - [Node](#node)
- [Create code places](#create-code-places)
    - [Github action to project](#github-action-to-project)
    - [Low level languages](#low-level-languages)
    - [High level languages](#high-level-languages)

# Preparing the VM to receive the project
## Install prerequisite packages
```
    sudo apt install gcc make perl curl tree ca-certificates gnupg jq python3-pip htop
```

## Git Config

<details>
 <summary><b>:hammer_and_wrench: Step-by-step guide to prepare git</b></summary>

1.  Installing
```
    sudo apt install git
```
2.  Config git user
```
    git config --global user.email "email@email.com"
    git config --global user.name "username"
```
3.  Generate GPG key for signed commits
```
    gpg --default-new-key-algo rsa4096 --gen-key
    gpg --list-secret-keys --keyid-format=long
    gpg --armor --export $GPP_ID_FROM_ABOVE_COMMAND
```
4.  Bind your public key to your github account  
```
    xdg-open https://github.com/settings/gpg/new
```
5. Automatically adding signatures to commits
```
    git config --global commit.gpgSign true
```

</details>

## Pull me to help you from now on
```
    mkdir -p ~/dev/
    cd ~/dev/
    git clone https://github.com/msscsh/linux-start.git
```
## Execute my basic configuration
```
    sudo chmod +x configure-linux-start
    sudo ~/dev/linux-start/bin/configure-linux-start $USER
```

# Virtual box extra features
## Enable transfer area
<details>
 <summary><b>:hammer_and_wrench: Step-by-step guide to enable transfer area</b></summary>

1.  start the VM.
2.  devices > Insert Guest Additions CD Image
3.  reboot guest
4.  navigate to VBox folder:  
```
    cd /media/$USER/VBox_GAs_*
```
5.  execute VBox script: 
```
    sh /media/$USER/VBox_GAs_7.0.6/VBoxLinuxAdditions.run
```
6.  devices > Shared Clipboard > Bidirectional
7.  reboot guest

</details>

## Increase video memory
<details>
 <summary><b>:hammer_and_wrench: Step-by-step guide to increase video memory</b></summary>

1.  with the the VM stoped.
2.  configuration > Monitor
3.  increase video memory (the higher the value, the higher the possible resolution)
4.  start the VM
5.  press, "host key" + "f"

</details>


# Useful software catalog
## Sublime Text
```
    #Install
    sh ./softwares/sublime-text/install.sh

    #Uninstall
    sh ./softwares/sublime-text/uninstall.sh

    #Config theme in sublime
    cd /home/marvin/.config/sublime-text/Packages/User/
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
## Github action to project
> [!IMPORTANT]\
> To maintain projects, they must follow an organization rule, where projects are grouped by types (any name can be invented, but by convention we use the project type) and within the types folder we have the projects themselves sayings. Then enter "type" and "project_name" when using the scripts below.
```
    bin/github-create node my-node-project-name
```
```
    bin/github-remove rust my-rust-project-name
```
```
    bin/github-status-all rust my-rust-project-name
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
