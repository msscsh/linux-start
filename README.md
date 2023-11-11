# linux-start
A project to assist in configuring Linux machines for development. Do not use in production environments.


# Steps

## install git on the newly created linux machine
```
sudo apt install git
```

## generate GPG key for signed commits
```
gpg --default-new-key-algo rsa4096 --gen-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export $GPP_ID_FROM_ABOVE_COMMAND
```

## bind your public key to you github account
https://github.com/settings/gpg/new


