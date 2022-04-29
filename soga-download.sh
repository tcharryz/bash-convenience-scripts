#!/bin/bash

rm -rf /etc/soga /etc/soga2 /etc/soga3
cd /etc;mkdir soga soga2 soga3;cd soga
wget https://github.com/vaxilu/soga/releases/download/2.7.5/soga-linux-amd64.tar.gz
cp soga-linux-amd64.tar.gz /etc/soga2/
cp soga-linux-amd64.tar.gz /etc/soga3/
tar xvf soga-linux-amd64.tar.gz
mv soga sogaa
mv sogaa/* .;rm -rf sogaa
cd /etc/soga2
tar xvf soga-linux-amd64.tar.gz
mv soga sogaa
mv sogaa/* .;rm -rf sogaa
cd /etc/soga3
tar xvf soga-linux-amd64.tar.gz
mv soga sogaa
mv sogaa/* .;rm -rf sogaa


