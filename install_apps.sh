#!/bin/bash
## Install brew 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Run this to install all my dev apps 
brew install git


## WIPE AND LOAD SECTION####
#   !!THIS WILL BRICK YOUR MAC BE SUPER CARFULL!!   #
xcode-select --install