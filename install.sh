sudo snap install microk8s --classic --channel=1.26
echo "alias kubectl='microk8s kubectl '" >> ~/.bashrc
echo "alias helm='microk8s helm3 '" >> ~/.bashrc
source ~/.bashrc
microk8s enable dns
microk8s enable helm3