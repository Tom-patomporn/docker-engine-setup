#!/usr/bin/env sh
sudo apt update

sudo apt upgrade

echo "\n====> Install dependencies <====\n"

sudo apt install lsb-release ca-certificates apt-transport-https software-properties-common -y
sudo apt  install curl

echo "\n====> import the Docker GPG key <====\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


echo "\n====> Docker repository add <====\n"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "\n====> Update system packages <====\n"
sudo apt update

echo "\n====> Install Docker on Ubuntu 22.04 <====\n"
sudo apt install docker-ce

# echo "\n====> Verify Docker status 'You can skip this command' <====\n"
# sudo systemctl status docker

# echo "\n====> version check 'You can skip this command' <====\n"
# docker version

echo "\n====> enable Docker <====\n"
sudo systemctl enable docker

echo "\n====> Docker run <====\n"
sudo docker run hello-world

# echo "\n====> images <====\n"
# docker images

# docker ps (current running container)
# docker ps -a (running & non-running stage)
# echo "\n====> solved command  <====\n"
# sudo systemctl status docker

echo "\n====> Installing + Setting up docker-compose <====\n"
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "\n====> Setting up permission for docker to run without 'sudo' <====\n"
sudo usermod -aG docker ${USER}
su - ${USER}