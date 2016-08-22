#!/bin/bash

sudo yum install emacs git git-core mod_dav_svn subversion freeglut freeglut-devel clang -y
sudo yum groupinstall "Development Tools"
sudo yum groupinstall "Development Libraries"
sudo git clone https://cmake.org/cmake.git
cd cmake
sudo ./bootstrap
sudo make
sudo make install
cd ..
mkdir bin
cd bin
git clone git://github.com/stnava/ANTs.git
mkdir antsbin
cd antsbin
ccmake ../ANTs
sudo make -j 4
sudo cp /home/ec2-user/bin/ANTs/Scripts/* /home/ec2-user/bin/antsbin/bin
