#!/bin/bash

echo "Disable docker proxy."
sudo rm /etc/systemd/system/docker.service.d/proxy.conf

echo "Reload the daemon configuration."
sudo systemctl daemon-reload

echo "Restart Docker to apply our changes."
sudo systemctl restart docker.service

echo "Verify that the configuration has been loaded."
sudo systemctl show --property=Environment docker
