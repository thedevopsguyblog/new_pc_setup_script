#!/bin/bash
cp 
echo "Installing all apps under the user profile $LOGNAME (i'll have to sudo)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install; break;;
        No ) exit;;
    esac
done

if (  != root )
    then
        echo "Elevating Privlidges..." 
    else
        echo "Already running as admin"
fi 
 
## Install brew and apps
echo "installing brew apps..."

## Run python script
echo "running .py script"
python ./install_and_deploy_agnostic_OS.py
#installBrew()
##{
#    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#    for
#
#}


#Run this to install all my dev apps 

#brew install git

## WIPE AND LOAD SECTION####
#   !!THIS WILL BRICK YOUR MAC BE SUPER CARFULL!!   #
#xcode-select --install