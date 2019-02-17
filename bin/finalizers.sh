#!/usr/bin/env bash
# 
#  

echo "######################################"
echo "Installing Pharo Smalltalk in $HOME/Pharo"
echo "######################################"
CURDIR=$(pwd); mkdir -p $HOME/Pharo; cd $HOME/Pharo; curl -L https://get.pharo.org/64/ | bash ; cd $CURDIR
