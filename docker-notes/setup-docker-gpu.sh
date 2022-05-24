#!/bin/bash
sudo apt-get update
echo "INSTALLING DOCKER ENGINE..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
echo "UPDATING NVIDIA DRIVERS..."
# Nvidia-Docker installation
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get -y update

sudo apt-get --yes install nvidia-docker2
sudo pkill -SIGHUP dockerd

sudo rm $(pwd)/get-docker.sh
sudo groupadd docker
sudo usermod -aG docker ${USER}

echo "VALIDATING NVIDIA DRVIERS"
check=$(sudo docker run --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 hello-world)

if [[ $check == *"Hello from Docker"* ]];then
    echo "SUCCESSFULLY INSTALLED DOCKER WITH GPU SUPPORT."
    exit 0
else
    echo "SETUP IS FACING ISSUE. CONTACT SUPPORT..."
    exit 1
fi