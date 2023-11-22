#!/bin/bash

DIRS=$(find ~/dev -maxdepth 4 -type d -name ".git")

for DIR in $DIRS; do
    ROOT_DIR=$(dirname "$DIR")
    echo $ROOT_DIR
    git -C $ROOT_DIR status
    read REPLY
done
