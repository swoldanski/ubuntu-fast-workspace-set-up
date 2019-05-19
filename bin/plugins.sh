#!/usr/bin/env bash
# 
#  

echo "######################################"
echo "Installing VS Code extensions"
echo "######################################"
for extension in $(cat bin/vscode-extensions-list.txt) ; do  code-insiders --force --install-extension $extension; done
