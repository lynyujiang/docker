#!/bin/bash

echo "[INFO] Configure the Docker daemon"
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn"]
}
EOF
echo ""

echo "[INFO] Flush changes and restart Docker"
sudo systemctl daemon-reload
sudo systemctl restart docker
echo ""

reboot () { echo 'Reboot? (y/n)' && read x && [[ "$x" == "y" ]] && /sbin/reboot; }

reboot
