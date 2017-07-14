#!/bin/bash

#set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm

declare -a versions=( '1.7.6' '1.8.3' )
for version in "${versions[@]}"
  do
    echo "######### Testing Go$version ###################"
    gvm use $version
    go version
done
