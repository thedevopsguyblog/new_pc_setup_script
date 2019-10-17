#!/bin/bash

applist = "applist.json"

echo "Installing all apps homebrew and yum apps under the user profile $LOGNAME (i'll have to sudo)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Installing apps";;
        No ) echo "exiting..." exit;;
    esac
done
 
## Install brew and apps
echo "installing brew apps..."

installapps(applist)
##{
#    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#    for
#
#}


## WIPE AND LOAD SECTION
#   !!THIS WILL BRICK YOUR MAC BE SUPER CARFULL!!   #
#xcode-select --install



/content/students/ahpra-registration