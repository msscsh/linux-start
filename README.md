# linux-start
A project to assist in creating development environments with VirtualBox and Debian-based distros. To create the project, VirtualBox with Ubuntu was used. Do not use in production environments.

# Steps
## Install prerequisite packages
  1. GCC 
```
  sudo apt install gcc
```
  2. Make
```
  sudo apt install make
```
  3. Perl
```
  sudo apt install perl
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


# Virtual box extra
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

