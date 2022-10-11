echo "1. Install MicroK8s"
# sudo snap install microk8s --classic --channel=1.25

echo "2. Join the group"
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
