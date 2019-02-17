#!/usr/bin/env bash
# 
#  Let start from begining
. versions

sudo apt update && sudo apt upgrade -y && sudo apt install -y \
curl httpie python3 git

python3 -m pip install pipenv

ssi="sudo snap install"
ssic="${ssi} --classic"

$ssi chromium
$ssi polar-bookshelf
$ssic go
$ssic vscode
$ssic --edge node


echo "######################################"
echo "Execute next step, please"
echo "######################################"

