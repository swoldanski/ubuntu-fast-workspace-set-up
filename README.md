Fast set up of new installed Ubuntu 18.+ system
---

Remember to change component's [versions](./versions) before install.

    
    bin/phase1.sh
    
    newgrp libvirt

    bin/phase2.sh
    

This will install:
- curl 
- httpie 
- python3 
- git 
- pipenv 
- chromium
- polar-bookshelf
- go
- vscode
- node (edge channel version)
- minikube
- libvirt
- qemu-kvm
- docker-machine-driver-kvm2
- kubectl
- helm
- skaffold
- k9s
- stern

This will configure:
- minikube => 3 CPU, 8G RAM, 64G disk
- minikube addons => heapster, dashboard, ingress, logviewer
- k8s cluster => RBAC for Helm & Dashboard
- add VS Code extensions from [bin/vscode-extensions-list.txt](bin/vscode-extensions-list.txt)