#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || yum install wget -y

yum install git -y && git clone https://github.com/thedevopsguyblog/new_pc_setup_script.git || brew install git && git clone https://github.com/thedevopsguyblog/new_pc_setup_script.git