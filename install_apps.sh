#!/bin/bash
applist=$(cat applist.json)
brewApp=$(which brew)

if [$brewApp == '/usr/local/bin/brew']

then
    echo 'in the then code'
else
    echo 'in the else'

fi
#installapps () {
#yum=$(echo $applist | jq --raw-output '.yumapplist[]')
#    for i in $yum; do
#            "installing yum app $yum"
#    done
#brew=$(echo $applist | jq '.brewapplist')
#    for i in $brew; do
#            echo "installing brew app $brew"
#    done
#brewCask=$(echo $applist | jq '.brewcaskapplist')
#    for i in $brewCask; do
#            echo "installing brew cask app $brewCask"
#    done
#}

