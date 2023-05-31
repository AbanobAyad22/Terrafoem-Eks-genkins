# install kubectl
sudo apt-get update
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO https://dl.k8s.io/release/v1.27.2/bin/linux/amd64/kubectl
curl -LO https://dl.k8s.io/release/v1.27.2/bin/linux/amd64/kubectl
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo chmod +x kubectl
sudo mkdir -p ~/.local/bin
sudo mv ./kubectl ~/.local/bin/kubectl
kubectl version --client --output=yaml
# -------
# install aws cli
sudo apt install zip
sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
unzip -u awscliv2.zip
sudo ./aws/install
./aws/install -i /usr/local/aws-cli -b /usr/local/bin
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
aws --version
# ---
aws eks --region us-east-1 update-kubeconfig --name mycluster
# ---
sed -i  -e 's/v1alpha1/v1beta1/' ~/.kube/config
# ---
kubectl get pod
kubectl get node