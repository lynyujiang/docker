#!/bin/bash

echo "[INFO] Remove the latest version:"

echo "1. Uninstall the Docker Engine, CLI, and Containerd packages:"
sudo apt-get purge docker-ce docker-ce-cli containerd.io

echo "2. Delete all images, containers, and volumes:"
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

echo "[INFO] Remove previous versions:"
sudo apt-get remove docker docker-engine docker.io containerd runc

