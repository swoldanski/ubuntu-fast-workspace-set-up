#!/usr/bin/env bash
# 
#  Let start from begining
. versions

sudo apt update && sudo apt upgrade -y && sudo apt install -y \
curl httpie python3 git ipython3 python3-pip

pip3 install --user pipenv

ssi="sudo snap install"
ssic="${ssi} --classic"

$ssi chromium
$ssi polar-bookshelf
$ssic go
$ssic code-insiders
$ssic --edge node


echo "######################################"
echo "Execute next step, please"
echo "######################################"

