# linux-start
A project to assist in configuring Linux machines for development. Do not use in production environments.


# Steps

## installing Sublime Text Git
### installing
```
  sudo apt install git
```
### config git user
```
  git config --global user.email "email@email.com"
  git config --global user.name "username"
```
### generate GPG key for signed commits
https://docs.github.com/pt/authentication/managing-commit-signature-verification/generating-a-new-gpg-key?platform=linux
```
  gpg --default-new-key-algo rsa4096 --gen-key
  gpg --list-secret-keys --keyid-format=long
  gpg --armor --export $GPP_ID_FROM_ABOVE_COMMAND
```
### bind your public key to your github account
https://github.com/settings/gpg/new


Fill Key field. Copy the GPG key, from the above command, starting with -----BEGIN PGP PUBLIC KEY BLOCK----- and ending with -----END PGP PUBLIC KEY BLOCK-----. 

## installing Sublime Text
### adding source
```
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo gpg --dearmor -o /usr/share/keyrings/sublimehq-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/sublimehq-archive-keyring.gpg] https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list > /dev/null
  sudo apt update
```
### installing
```
  sudo apt install sublime-text
```


