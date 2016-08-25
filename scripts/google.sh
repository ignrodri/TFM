#!/bin/bash

# Connect CentOS repository. It will work for Amazon-Linux.
sudo wget http://download.opensuse.org/repositories/home:ocaml/CentOS_7/home:ocaml.repo -P /etc/yum.repos.d/

# Install Ocaml and required dependencies.
sudo yum install opam ocaml gcc gcc-c++ m4 make ocamldoc sqlite-devel libcurl-devel fuse-devel zlib-devel ocaml-camlp4-devel ncurses-devel

opam init
opam install google-drive-ocamlfuse