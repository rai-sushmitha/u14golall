#!/bin/bash

#set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm
export  CGO_ENABLED=0


declare -a versions=(  '1.7.6' '1.8.3' )
for version in "${versions[@]}"
  do
     echo "================= Install Go $version==================="
     
     gvm install go$version && gvm use go$version && go install -a std && go get -u github.com/tools/godep
done

