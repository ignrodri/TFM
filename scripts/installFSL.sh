#!/bin/bash

cd $HOME
git config --global user.email "ignrodri@ucm.es"
git config --global user.name "Ignacio"
wget -O- http://neuro.debian.net/lists/trusty.cn-bj1.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
sudo apt-key adv --recv-keys --keyserver hkp://pgp.mit.edu:80 0xA5D32F012649A5A9
