#!/usr/bin/env sh
echo "\n====> Docker Login to your repository <====\n"
sudo cp ./daemon.json /etc/docker/daemon.json
sudo systemctl restart docker
docker login xxx.xxx.xxxx:8082 -u username -p password