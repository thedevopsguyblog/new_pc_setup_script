#!/bin/bash
applist=$(cat applist.json)

#echo "Installing all apps homebrew and yum apps under the user profile $LOGNAME (i'll have to sudo)"

installapps () {
yum=$(echo $applist | jq --raw-output '.yumapplist[]')
    for i in $yum; do
            "installing yum app $yum"
    done
brew=$(echo $applist | jq '.brewapplist')
    for i in $brew; do
            echo "installing brew app $brew"
    done
brewCask=$(echo $applist | jq '.brewcaskapplist')
    for i in $brewCask; do
            echo "installing brew cask app $brewCask"
    done
}

installapps applist
