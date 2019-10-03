#!/bin/bash
#elevate Perms
read -s -p "Enter Password to run setup script:" elevatedPassWord

## Install brew 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Run this to install all my dev apps
brewCaskInstallList=("docker" "keeweb" "powershell" "slack")
for i in "${brewCaskInstallList[@]}"
do
    brew install 
done

brewInstallList=("git" "visual-studio-code" "httpie" "python" "openssl")
for i in "${brewInstallList[@]}"
do
    brew cask install 
done


## WIPE AND LOAD SECTION####
#   !!THIS WILL BRICK YOUR MAC BE SUPER CARFULL!!   #
xcode-select --install