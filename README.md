# linux-start
A project to assist in configuring Linux machines for development. Do not use in production environments.


# Steps

## install git on the newly created linux machine
```
sudo apt install git
```

## generate GPG key for signed commits
https://docs.github.com/pt/authentication/managing-commit-signature-verification/generating-a-new-gpg-key?platform=linux
```
gpg --default-new-key-algo rsa4096 --gen-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export $GPP_ID_FROM_ABOVE_COMMAND
```

## bind your public key to your github account
https://github.com/settings/gpg/new


Fill Key field. Copy the GPG key, from the above command, starting with -----BEGIN PGP PUBLIC KEY BLOCK----- and ending with -----END PGP PUBLIC KEY BLOCK-----. 

