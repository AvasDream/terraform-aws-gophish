#!/bin/bash
FILE=gophish-v0.9.0-linux-64bit.zip
apt update
apt install unzip -y
mkdir ~/gophish 
cd ~/gophish 
wget https://github.com/gophish/gophish/releases/download/v0.9.0/$FILE
unzip -q $FILE 
sed -i 's/127.0.0.1/0.0.0.0/g' config.json
./gophish &