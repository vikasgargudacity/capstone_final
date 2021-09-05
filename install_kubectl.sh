#!/usr/bin/env bash

curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bash_profile
kubectl version --short --client
