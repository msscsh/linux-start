# linux-start
A project to assist in creating development environments with VirtualBox and Debian-based distros. To create the project, VirtualBox with Ubuntu was used. Do not use in production environments.

# First steps
## Install prerequisite packages (GCC, make, perl, curl, tree, ca-certificates and gnupg)
```
  sudo apt install gcc make perl curl tree ca-certificates gnupg
```

## Install/Config Git
  1. Installing 
```
    sudo apt install git
```
  2. Config git user 
```
    git config --global user.email "email@email.com"
    git config --global user.name "username"
```
  3. Generate GPG key for signed commits
```
    gpg --default-new-key-algo rsa4096 --gen-key
    gpg --list-secret-keys --keyid-format=long
    gpg --armor --export $GPP_ID_FROM_ABOVE_COMMAND
```
  4. Bind your public key to your github account
```
    xdg-open https://github.com/settings/gpg/new
```

## Install Sublime Text
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

## Pull github project
  1. Introducing the project organization structure

```
    ./dev/github/
    ├── cypress
    │   └── time-machine-in-cypress
    ├── java
    │   └── one-java-project
    ├── node
    │   └── node-project-001
    └── rust
        ├── rust-project-1
        └── rust-project-2
```
  2. Pull github project
```
  sh bin/create-github-project.sh "project_type" "github_repository_name"
```
  3. Remove github project
```
    sh bin/remove-github-project.sh "project_language" "project_name"
```

# Virtual box extra features(helpfull)
## Enable transfer area
  1. Start the VM
  2. Devices > Insert Guest Additions CD Image
  3. Reboot guest
  4. navite to VBox folder
```
      cd /media/$USER/VBox_GAs_*
```
  5. execute VBox script
```
     sh /media/$USER/VBox_GAs_7.0.6/VBoxLinuxAdditions.run
```
  6. Reboot guest


# Now choose your path(The real begin)
## Rust
### Install Rust Enviroment
```
     sh ./enviroments/rust/install.sh
```
### Uninstall Rust Enviroment
```
     sh ./enviroments/rust/uninstall.sh
```

## Node
### Install Node Enviroment
```
     sh ./enviroments/node/install.sh
```
### Uninstall Node Enviroment
```
     sh ./enviroments/node/uninstall.sh
```


# Create playgrounds
## Low level languages
### Create low level project
```
     sh ./playgrounds/lowlevel/create.sh
```
### Destroy low level project(if you want, at any time)
```
     sh ./playgrounds/lowlevel/destroy.sh
```

## High level languages
### Create high level project
```
     sh ./playgrounds/highlevel/create.sh
```
### Destroy high level project(if you want, at any time)
```
     sh ./playgrounds/highlevel/destroy.sh
```
