#!/bin/bash

echo "Create a new directory for our Docker service configurations."
sudo mkdir -p /etc/systemd/system/docker.service.d

echo "Create a file called proxy.conf in our configuration directory."
sudo tee /etc/systemd/system/docker.service.d/proxy.conf << EOF
[Service]
Environment="HTTP_PROXY=http://proxy.goworld.com:3128/"
Environment="HTTPS_PROXY=http://proxy.goworld.com:3128/"
Environment="NO_PROXY="localhost,127.0.0.1,::1"
EOF

echo "Reload the daemon configuration."
sudo systemctl daemon-reload

echo "Restart Docker to apply our changes."
sudo systemctl restart docker.service

echo "Verify that the configuration has been loaded."
sudo systemctl show --property=Environment docker
