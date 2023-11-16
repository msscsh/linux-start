#!/bin/bash

#Verify prerequisites
echo $PWD
sudo apt update
sudo apt install rustc
rustc ./enviroments/rust/rust-test.rs -o ./enviroments/rust/rust-test
./enviroments/rust/rust-test
rm -f ./enviroments/rust/rust-test