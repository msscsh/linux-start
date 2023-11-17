#!/bin/bash

#Verify prerequisites
echo $PWD
sudo apt update
yes | sudo apt install rustc

rustc --version

rustc ./enviroments/rust/test.rs -o ./enviroments/rust/test
./enviroments/rust/test
rm -f ./enviroments/rust/test
