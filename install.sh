sudo snap install microk8s --classic --channel=1.26
echo "alias kubectl='microk8s kubectl '" >> ~/.bashrc
echo "alias helm='microk8s helm3 '" >> ~/.bashrc
source ~/.bashrc
sudo usermod -a -G microk8s devtron
sudo chown -f -R devtron ~/.kube
newgrp microk8s
microk8s enable dns
microk8s enable helm3